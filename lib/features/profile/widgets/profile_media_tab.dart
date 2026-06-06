import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_error_widget.dart';
import 'package:pulse/core/widgets/app_media_viewer.dart';
import 'package:pulse/core/widgets/app_network_image.dart';
import 'package:pulse/core/widgets/app_pagination_footer.dart';
import 'package:pulse/features/profile/bloc/profile_media/profile_media_bloc.dart';
import 'package:pulse/shared/domain/entities/media_type.dart';

class ProfileMediaTab extends StatelessWidget {
  final String userId;

  const ProfileMediaTab({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    return NotificationListener<ScrollNotification>(
      onNotification: (notification) {
        if (notification is ScrollEndNotification &&
            notification.metrics.pixels >=
                notification.metrics.maxScrollExtent * 0.9) {
          final state = context.read<ProfileMediaBloc>().state;
          if (state.status != ProfileMediaStatus.loading &&
              state.status != ProfileMediaStatus.loadingMore &&
              state.hasMore) {
            context.read<ProfileMediaBloc>().add(
              ProfileMediaEvent.fetchMore(userId),
            );
          }
        }
        return false;
      },
      child: BlocBuilder<ProfileMediaBloc, ProfileMediaState>(
        builder: (context, state) {
          if (state.status == ProfileMediaStatus.initial ||
              (state.status == ProfileMediaStatus.loading &&
                  state.media.isEmpty)) {
            return GridView.builder(
              itemCount: 12,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 2,
                mainAxisSpacing: 2,
              ),
              itemBuilder: (context, index) => const Card(
                shape: RoundedRectangleBorder(borderRadius: .zero),
              ),
            );
          }

          if (state.status == ProfileMediaStatus.failure &&
              state.media.isEmpty) {
            return AppErrorWidget(
              message: state.errorMessage ?? 'Failed to load media.',
              onRetry: () => context.read<ProfileMediaBloc>().add(
                ProfileMediaEvent.fetchInitial(userId),
              ),
            );
          }

          if (state.status == ProfileMediaStatus.success &&
              state.media.isEmpty) {
            return Center(
              child: Text(
                'No media yet.',
                style: context.textTheme.bodyMedium?.copyWith(
                  color: context.colorScheme.secondary,
                ),
              ),
            );
          }

          return CustomScrollView(
            slivers: [
              SliverGrid(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2,
                ),
                delegate: SliverChildBuilderDelegate((context, index) {
                  final media = state.media[index];
                  return GestureDetector(
                    onTap: () => AppMediaViewer.open(
                      context,
                      mediaItems: state.media,
                      initialIndex: index,
                    ),
                    child: AppNetworkImage(
                      url: media.thumbnailUrl ?? media.url,
                      width: .infinity,
                      height: .infinity,
                      isVideo: media.type == MediaType.video,
                    ),
                  );
                }, childCount: state.media.length),
              ),
              SliverToBoxAdapter(
                child: AppPaginationFooter(
                  isLoading: state.status == ProfileMediaStatus.loadingMore,
                  displayNoMoreItems: !state.hasMore && state.media.length > 30,
                  error: state.errorMessage,
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
