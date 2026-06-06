import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/core/di/service_locator.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_error_widget.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/core/widgets/app_pagination_footer.dart';
import 'package:pulse/core/widgets/app_snack_bar.dart';
import 'package:pulse/core/widgets/post_card/post_card.dart';
import 'package:pulse/shared/presentation/blocs/post_like/post_like_cubit.dart';
import 'package:pulse/features/post/bloc/post_management/post_management_bloc.dart';
import 'package:pulse/features/profile/bloc/profile_posts/profile_posts_bloc.dart';

class ProfilePostsTab extends StatelessWidget {
  final String userId;

  const ProfilePostsTab({super.key, required this.userId});

  @override
  Widget build(BuildContext context) {
    final currentUserId = context.read<AppUserBloc>().state.maybeWhen(
      authenticated: (profile) => profile.id,
      orElse: () => null,
    );

    return BlocListener<PostManagementBloc, PostManagementState>(
      listener: (context, state) {
        if (state is PostManagementError) {
          AppSnackBar.show(
            context,
            message: state.message,
            type: SnackBarType.error,
          );
        }
      },
      child: NotificationListener<ScrollNotification>(
        onNotification: (notification) {
          if (notification is ScrollEndNotification &&
              notification.metrics.pixels >=
                  notification.metrics.maxScrollExtent * 0.9) {
            final state = context.read<ProfilePostsBloc>().state;
            if (state.status != ProfilePostsStatus.loading &&
                state.status != ProfilePostsStatus.loadingMore &&
                state.hasMore) {
              context.read<ProfilePostsBloc>().add(
                ProfilePostsEvent.fetchMore(userId),
              );
            }
          }
          return false;
        },
        child: BlocBuilder<ProfilePostsBloc, ProfilePostsState>(
          builder: (context, state) {
            if (state.status == ProfilePostsStatus.initial ||
                (state.status == ProfilePostsStatus.loading &&
                    state.posts.isEmpty)) {
              return const AppLoadingIndicator();
            }

            if (state.status == ProfilePostsStatus.failure &&
                state.posts.isEmpty) {
              return AppErrorWidget(
                message: state.errorMessage ?? 'Failed to load posts.',
                onRetry: () => context.read<ProfilePostsBloc>().add(
                  ProfilePostsEvent.fetchInitial(userId),
                ),
              );
            }

            if (state.status == ProfilePostsStatus.success &&
                state.posts.isEmpty) {
              return Center(
                child: Text(
                  'No posts yet.',
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
                    isLoading: state.status == ProfilePostsStatus.loadingMore,
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
