import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/core/di/service_locator.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_error_widget.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/core/widgets/app_pagination_footer.dart';
import 'package:pulse/core/widgets/post_card/post_card.dart';
import 'package:pulse/features/hashtag/hashtag_feed_bloc/hashtag_feed_bloc.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/shared/presentation/blocs/post_like/post_like_cubit.dart';

class HashtagFeedPage extends StatelessWidget {
  final String hashtag;
  const HashtagFeedPage({super.key, required this.hashtag});

  @override
  Widget build(BuildContext context) {
    final currentUserId = context.read<AppUserBloc>().state.mapOrNull(
      authenticated: (state) => state.profile.id,
    );
    return Scaffold(
      appBar: AppBar(title: Text('#$hashtag')),
      body: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollEndNotification &&
              notification.metrics.pixels >=
                  notification.metrics.maxScrollExtent * 0.9) {
            final state = context.read<HashtagFeedBloc>().state;
            if (state.status != HashtagFeedStatus.loading &&
                state.status != HashtagFeedStatus.loadingMore &&
                state.hasMore) {
              context.read<HashtagFeedBloc>().add(
                HashtagFeedEvent.fetchMore(hashtag),
              );
            }
          }
          return false;
        },
        child: BlocBuilder<HashtagFeedBloc, HashtagFeedState>(
          builder: (context, state) {
            if (state.status == HashtagFeedStatus.initial ||
                (state.status == HashtagFeedStatus.loading &&
                    state.posts.isEmpty)) {
              return const AppLoadingIndicator();
            }

            if (state.status == HashtagFeedStatus.failure &&
                state.posts.isEmpty) {
              return AppErrorWidget(
                message: state.errorMessage ?? 'Failed to load hashtagFeed.',
                onRetry: () => context.read<HashtagFeedBloc>().add(
                  HashtagFeedEvent.fetchInitial(hashtag),
                ),
              );
            }

            if (state.status == HashtagFeedStatus.success &&
                state.posts.isEmpty) {
              return Center(
                child: Text(
                  'No posts related to #$hashtag.',
                  style: context.textTheme.bodyMedium?.copyWith(
                    color: context.colorScheme.secondary,
                  ),
                ),
              );
            }

            return ListView.separated(
              itemCount: state.posts.length + 1,
              separatorBuilder: (context, index) =>
                  index < state.posts.length - 1
                  ? const Divider(height: 24)
                  : const SizedBox(),
              itemBuilder: (context, index) {
                if (index == state.posts.length) {
                  return AppPaginationFooter(
                    isLoading: state.status == HashtagFeedStatus.loadingMore,
                    displayNoMoreItems:
                        !state.hasMore && state.posts.length > 10,
                    error: state.errorMessage,
                  );
                }

                final post = state.posts[index];
                return BlocProvider(
                  create: (_) => sl<PostLikeCubit>()
                    ..initialize(
                      isLiked: post.isLiked,
                      likeCount: post.likeCount,
                    ),
                  child: PostCard(post: post, currentUserId: currentUserId),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
