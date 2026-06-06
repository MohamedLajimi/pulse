import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/router/route_names.dart';
import 'package:pulse/core/widgets/app_alert_dialog.dart';
import 'package:pulse/core/widgets/post_card/post_card_actions.dart';
import 'package:pulse/core/widgets/post_card/post_card_caption.dart';
import 'package:pulse/core/widgets/post_card/post_card_header.dart';
import 'package:pulse/core/widgets/post_card/post_card_media_carousel.dart';
import 'package:pulse/core/widgets/post_card/post_card_options_sheet.dart';
import 'package:pulse/features/post/bloc/post_management/post_management_bloc.dart';
import 'package:pulse/shared/presentation/blocs/post_like/post_like_cubit.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';

class PostCard extends StatelessWidget {
  final PostEntity post;
  final String? currentUserId;

  const PostCard({
    super.key,
    required this.post,
    this.currentUserId,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () => context.read<PostLikeCubit>().toggleLike(post.id),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          if (post.author != null)
            PostCardHeader(
              author: post.author!,
              isEdited: post.isEdited,
              createdAt: post.createdAt,
              onUserTapped: () => navigateToProfile(context),
              trailing: PostCardOptionsMenu(
                isOwnPost: currentUserId == post.author?.id,
                onSelected: (option) =>
                    _handleOptionSelected(context, option, post),
              ),
            ),

          if (post.media.isNotEmpty)
            PostCardMediaCarousel(mediaItems: post.media),

          PostCardCaption(
            caption: post.caption,
            onMentionTapped: (username) {
              final mentionedUserId = post.mentions
                  .where((m) => m.profile.username == username)
                  .firstOrNull
                  ?.mentionedUserId;
              if (mentionedUserId != null) {
                context.pushNamed(
                  RouteNames.userProfile,
                  pathParameters: {'userId': mentionedUserId},
                );
              }
            },
          ),

          PostCardActions(
            postId: post.id,
            commentCount: post.commentCount,
          ),
        ],
      ),
    );
  }

  void navigateToProfile(BuildContext context) {
    final currentPath = GoRouterState.of(context).matchedLocation;

    if (!currentPath.contains('user')) {
      context.pushNamed(
        RouteNames.userProfile,
        pathParameters: {'userId': post.userId},
      );
    }
  }

  void _handleOptionSelected(
    BuildContext context,
    PostCardOptionType option,
    PostEntity post,
  ) {
    return switch (option) {
      PostCardOptionType.edit => context.pushNamed(
        RouteNames.editPost,
        pathParameters: {'postId': post.id},
      ),
      PostCardOptionType.delete => _showDeletePostDialog(context, post.id),
      PostCardOptionType.save => null,
      PostCardOptionType.report => null,
    };
  }

  void _showDeletePostDialog(BuildContext context, String postId) {
    AppAlertDialog.show(
      context: context,
      icon: CupertinoIcons.trash,
      title: 'Delete Post',
      message:
          'Are you sure you want to delete this post? This action cannot be undone.',
      primaryButtonText: 'Confirm',
      isDestructive: true,
      onPrimaryPressed: () =>
          context.read<PostManagementBloc>().add(DeletePost(postId)),
    );
  }
}
