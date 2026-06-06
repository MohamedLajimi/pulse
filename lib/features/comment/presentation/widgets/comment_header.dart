import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_avatar.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/features/comment/presentation/comment_actions_bloc/comment_actions_bloc.dart';
import 'package:pulse/features/comment/presentation/comment_input_cubit/comment_input_cubit.dart';
import 'package:timeago/timeago.dart' as timeago;

class CommentHeader extends StatelessWidget {
  final CommentEntity comment;
  const CommentHeader({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        AppAvatar(url: comment.author?.avatarUrl, radius: 16),
        const SizedBox(width: 8),
        Expanded(
          child: Column(
            crossAxisAlignment: .start,
            children: [
              Text(
                comment.author?.displayName ?? 'Unknown',
                style: context.textTheme.bodyMedium?.copyWith(
                  fontWeight: .w700,
                ),
              ),
              Text(
                timeago.format(comment.createdAt),
                style: context.textTheme.labelSmall?.copyWith(
                  color: context.colorScheme.secondary,
                ),
              ),
            ],
          ),
        ),
        BlocBuilder<CommentActionsBloc, CommentActionsState>(
         buildWhen: (prev, curr) {
        if (curr is CommentActionsMutating) {
          return curr.commentId == comment.id;
        }
        return prev is CommentActionsMutating &&
            (prev).commentId == comment.id;
      },
      builder: (context, state) {
        final isMutating =
            state is CommentActionsMutating && state.commentId == comment.id;
            return _CommentOptionsButton(comment: comment, isMutating: isMutating);
          },
        ),
      ],
    );
  }
}

class _CommentOptionsButton extends StatelessWidget {
  final CommentEntity comment;
  final bool isMutating;

  const _CommentOptionsButton({
    required this.comment,
    required this.isMutating,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => showModalBottomSheet(
        context: context,
        builder: (_) => _CommentOptionsSheet(
          comment: comment,
          actionsBloc: context.read<CommentActionsBloc>(),
          inputCubit: context.read<CommentInputCubit>(),
        ),
      ),
      child: isMutating
          ? const SizedBox(
              width: 14,
              height: 14,
              child: CircularProgressIndicator.adaptive(strokeWidth: 1.5),
            )
          : Icon(
              Icons.more_horiz,
              size: 18,
              color: context.colorScheme.secondary,
            ),
    );
  }
}

class _CommentOptionsSheet extends StatelessWidget {
  final CommentEntity comment;
  final CommentActionsBloc actionsBloc;
  final CommentInputCubit inputCubit;

  const _CommentOptionsSheet({
    required this.comment,
    required this.actionsBloc,
    required this.inputCubit,
  });

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: .min,
        children: [
          ListTile(
            leading: const Icon(Icons.edit_outlined),
            title: const Text('Edit'),
            onTap: () {
              Navigator.pop(context);
              inputCubit.setEditMode(comment);
            },
          ),
          ListTile(
            leading: Icon(
              Icons.delete_outline,
              color: context.colorScheme.error,
            ),
            title: Text(
              'Delete',
              style: TextStyle(color: context.colorScheme.error),
            ),
            onTap: () {
              Navigator.pop(context);
              actionsBloc.add(
                CommentActionsEvent.deleteComment(
                  commentId: comment.id,
                  parentId: comment.parentId,
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
