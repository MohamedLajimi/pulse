import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_error_widget.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/core/widgets/app_pagination_footer.dart';
import 'package:pulse/core/widgets/connection_list_item.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/shared/presentation/blocs/profile_connections/profile_connections_bloc.dart';

class ProfileConnectionsPage extends StatefulWidget {
  final String userId;
  final ConnectionType connectionType;

  const ProfileConnectionsPage({
    super.key,
    required this.userId,
    required this.connectionType,
  });

  @override
  State<ProfileConnectionsPage> createState() => _ProfileConnectionsPageState();
}

class _ProfileConnectionsPageState extends State<ProfileConnectionsPage> {
  @override
  void initState() {
    super.initState();
    context.read<ProfileConnectionsBloc>().add(
      ProfileConnectionsEvent.fetchInitial(
        userId: widget.userId,
        connectionType: widget.connectionType,
      ),
    );
  }

  bool _onScrollNotification(
    ScrollNotification notification,
    ProfileConnectionsState state,
  ) {
    if (notification.metrics.axisDirection == AxisDirection.down &&
        notification.metrics.pixels >=
            notification.metrics.maxScrollExtent - 200) {
      if (state.hasMore &&
          state.status != ProfileConnectionsStatus.loadingMore) {
        context.read<ProfileConnectionsBloc>().add(
          ProfileConnectionsEvent.fetchMore(
            userId: widget.userId,
            connectionType: widget.connectionType,
          ),
        );
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final currentUserId = context.read<AppUserBloc>().state.maybeWhen(
      authenticated: (profile) => profile.id,
      orElse: () => '',
    );
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.connectionType == ConnectionType.followers
              ? 'Followers'
              : 'Following',
        ),
      ),
      body: BlocBuilder<ProfileConnectionsBloc, ProfileConnectionsState>(
        builder: (context, state) {
          if (state.status == ProfileConnectionsStatus.initial ||
              state.status == ProfileConnectionsStatus.loading) {
            return const AppLoadingIndicator();
          }

          if (state.status == ProfileConnectionsStatus.failure &&
              state.profiles.isEmpty) {
            return AppErrorWidget(
              message: state.errorMessage ?? 'Failed to load connections',
              onRetry: () => context.read<ProfileConnectionsBloc>().add(
                ProfileConnectionsEvent.fetchInitial(
                  userId: widget.userId,
                  connectionType: widget.connectionType,
                ),
              ),
            );
          }

          if (state.profiles.isEmpty) {
            return Center(
              child: Text(
                widget.connectionType == ConnectionType.followers
                    ? 'No followers yet.'
                    : 'Not following anyone yet.',
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.colorScheme.secondary,
                  fontWeight: .w500,
                ),
              ),
            );
          }

          return NotificationListener<ScrollNotification>(
            onNotification: (notification) =>
                _onScrollNotification(notification, state),
            child: ListView.builder(
              padding: const .symmetric(vertical: 8),
              itemCount: state.profiles.length + (state.hasMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == state.profiles.length) {
                  return AppPaginationFooter(
                    displayNoMoreItems: !state.hasMore,
                    isLoading:
                        state.status == ProfileConnectionsStatus.loadingMore,
                    error:
                        state.status ==
                            ProfileConnectionsStatus.paginationFailure
                        ? state.errorMessage
                        : null,
                  );
                }

                final profile = state.profiles[index];
                return ConnectionListItem(
                  profile: profile,
                  currentUserId: currentUserId,
                  connectionType: widget.connectionType,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
