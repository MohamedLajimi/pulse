import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/features/comment/presentation/comment_actions_bloc/comment_actions_bloc.dart';
import 'package:pulse/features/comment/presentation/comment_input_cubit/comment_input_cubit.dart';

class CommentActionsRow extends StatelessWidget {
  final CommentEntity comment;

  const CommentActionsRow({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentActionsBloc, CommentActionsState>(
      buildWhen: (prev, curr) {
        if (curr is CommentActionsMutating) {
          return curr.commentId == comment.id;
        }
        return prev is CommentActionsMutating && (prev).commentId == comment.id;
      },
      builder: (context, state) {
        final isMutating =
            state is CommentActionsMutating && state.commentId == comment.id;

        return Row(
          children: [
            GestureDetector(
              onTap: isMutating
                  ? null
                  : () => context.read<CommentActionsBloc>().add(
                      CommentActionsEvent.likeComment(
                        commentId: comment.id,
                        isLiked: comment.isLiked,
                        likeCount: comment.likeCount,
                      ),
                    ),
              child: Row(
                children: [
                  Icon(
                    comment.isLiked
                        ? Icons.favorite_rounded
                        : Icons.favorite_border_rounded,
                    size: 18,
                    color: comment.isLiked
                        ? Colors.red
                        : context.colorScheme.onSurfaceVariant,
                  ),
                  if (comment.likeCount > 0) ...[
                    const SizedBox(width: 4),
                    Text(
                      '${comment.likeCount}',
                      style: context.textTheme.labelSmall?.copyWith(
                        color: context.colorScheme.onSurfaceVariant,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            const SizedBox(width: 16),

            if (!comment.isReply)
              GestureDetector(
                onTap: () =>
                    context.read<CommentInputCubit>().setReplyMode(comment),
                child: Text(
                  'Reply',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: context.colorScheme.onSurfaceVariant,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
          ],
        );
      },
    );
  }
}
