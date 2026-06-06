import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_error_widget.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/core/widgets/app_pagination_footer.dart';
import 'package:pulse/core/widgets/post_liker_item.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/shared/presentation/blocs/post_likers/post_likers_bloc.dart';

class PostLikersPage extends StatefulWidget {
  final String postId;
  const PostLikersPage({super.key, required this.postId});

  @override
  State<PostLikersPage> createState() => _PostLikersPageState();
}

class _PostLikersPageState extends State<PostLikersPage> {
  bool _onScrollNotification(
    BuildContext context,
    ScrollNotification notification,
    PostLikersState state,
  ) {
    if (notification.metrics.axisDirection == AxisDirection.down &&
        notification.metrics.pixels >=
            notification.metrics.maxScrollExtent - 200) {
      if (state.hasMore && state.status != PostLikersStatus.loadingMore) {
        context.read<PostLikersBloc>().add(
          PostLikersEvent.fetchMore(widget.postId),
        );
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    final currentUserId = context.read<AppUserBloc>().state.whenOrNull(
      authenticated: (profile) => profile.id,
    );

    return Scaffold(
      appBar: AppBar(title: const Text('Post Likes')),
      body: BlocBuilder<PostLikersBloc, PostLikersState>(
        builder: (context, state) {
          if (state.status == PostLikersStatus.initial ||
              state.status == PostLikersStatus.loading) {
            return const AppLoadingIndicator();
          }

          if (state.status == PostLikersStatus.failure &&
              state.likers.isEmpty) {
            return AppErrorWidget(
              message: state.errorMessage ?? 'Failed to load likes',
              onRetry: () => context.read<PostLikersBloc>().add(
                PostLikersEvent.fetchInitial(widget.postId),
              ),
            );
          }

          if (state.likers.isEmpty) {
            return Center(
              child: Text(
                'No likes yet.',
                style: context.textTheme.bodyLarge?.copyWith(
                  color: context.colorScheme.secondary,
                  fontWeight: .w500,
                ),
              ),
            );
          }

          return NotificationListener<ScrollNotification>(
            onNotification: (notification) =>
                _onScrollNotification(context, notification, state),
            child: ListView.builder(
              padding: const .symmetric(vertical: 8),
              itemCount: state.likers.length + (state.hasMore ? 1 : 0),
              itemBuilder: (context, index) {
                if (index == state.likers.length) {
                  return AppPaginationFooter(
                    displayNoMoreItems: !state.hasMore,
                    isLoading: state.status == PostLikersStatus.loadingMore,
                    error: state.status == PostLikersStatus.paginationFailure
                        ? state.errorMessage
                        : null,
                  );
                }

                final profile = state.likers[index];
                return PostLikerItem(
                  profile: profile,
                  isCurrentUser: currentUserId == profile.id,
                );
              },
            ),
          );
        },
      ),
    );
  }
}
