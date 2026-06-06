import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/router/route_names.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/shared/presentation/blocs/post_like/post_like_cubit.dart';

class PostCardActions extends StatelessWidget {
  final String postId;
  final int commentCount;

  const PostCardActions({
    super.key,
    required this.postId,
    required this.commentCount,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .symmetric(horizontal: 16, vertical: 10),
      child: Row(
        children: [
          BlocBuilder<PostLikeCubit, PostLikeState>(
            builder: (context, likeState) {
              return GestureDetector(
                onTap: () => context.read<PostLikeCubit>().toggleLike(postId),
                child: Row(
                  children: [
                    Icon(
                      likeState.isLiked
                          ? CupertinoIcons.heart_fill
                          : CupertinoIcons.heart,
                      size: 24,
                      color: likeState.isLiked
                          ? AppColors.like
                          : context.colorScheme.primary,
                    ),
                    const SizedBox(width: 8),
                    GestureDetector(
                      onTap: () => context.pushNamed(
                        RouteNames.postLikers,
                        pathParameters: {'postId': postId},
                      ),
                      child: Text(
                        _formatCount(likeState.likeCount),
                        style: context.textTheme.bodyMedium?.copyWith(
                          fontWeight: .w600,
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          const SizedBox(width: 20),
          GestureDetector(
            onTap: () => context.pushNamed(
              RouteNames.comments,
              pathParameters: {'postId': postId},
            ),
            child: Row(
              children: [
                Icon(
                  CupertinoIcons.chat_bubble,
                  size: 22,
                  color: context.colorScheme.primary,
                ),
                const SizedBox(width: 8),
                Text(
                  _formatCount(commentCount),
                  style: context.textTheme.bodyMedium?.copyWith(
                    fontWeight: .w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String _formatCount(int count) {
    if (count >= 1000000) return '${(count / 1000000).toStringAsFixed(1)}M';
    if (count >= 10000) return '${(count / 1000).toStringAsFixed(1)}K';
    return count.toString();
  }
}
