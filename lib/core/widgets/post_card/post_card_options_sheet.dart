import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/theme/app_colors.dart';

enum PostCardOptionType { edit, delete, save, report }

class PostCardOptionsMenu extends StatelessWidget {
  final bool isOwnPost;
  final void Function(PostCardOptionType) onSelected;

  const PostCardOptionsMenu({
    super.key,
    required this.isOwnPost,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<PostCardOptionType>(
      icon: Icon(
        CupertinoIcons.ellipsis,
        size: 18,
        color: context.colorScheme.secondary,
      ),
      onSelected: onSelected,
      position: .under,
      padding: .zero,
      offset: const Offset(0, -10),
      shape: RoundedRectangleBorder(borderRadius: .circular(12)),
      color: context.theme.cardColor,
      itemBuilder: (context) =>
          isOwnPost ? _ownPostItems(context) : _otherPostItems(context),
    );
  }

  List<PopupMenuEntry<PostCardOptionType>> _ownPostItems(BuildContext context) {
    return [
      PopupMenuItem(
        value: PostCardOptionType.edit,
        child: Row(
          children: [
            Icon(
              CupertinoIcons.pencil,
              size: 18,
              color: context.colorScheme.onSurface,
            ),
            const SizedBox(width: 10),
            Text(
              'Edit Post',
              style: context.textTheme.bodySmall?.copyWith(
                color: context.colorScheme.onSurface,
              ),
            ),
          ],
        ),
      ),
      PopupMenuItem(
        value: PostCardOptionType.delete,
        child: Row(
          children: [
            const Icon(CupertinoIcons.trash, size: 18, color: AppColors.error),
            const SizedBox(width: 10),
            Text(
              'Delete Post',
              style: context.textTheme.bodySmall?.copyWith(
                color: AppColors.error,
              ),
            ),
          ],
        ),
      ),
    ];
  }

  List<PopupMenuEntry<PostCardOptionType>> _otherPostItems(
    BuildContext context,
  ) {
    return [
      PopupMenuItem(
        value: PostCardOptionType.save,
        child: Row(
          children: [
            Icon(
              CupertinoIcons.bookmark,
              size: 18,
              color: context.colorScheme.onSurface,
            ),
            const SizedBox(width: 10),
            Text('Save Post', style: context.textTheme.bodyMedium),
          ],
        ),
      ),
      PopupMenuItem(
        value: PostCardOptionType.report,
        child: Row(
          children: [
            const Icon(CupertinoIcons.flag, size: 18, color: Colors.red),
            const SizedBox(width: 10),
            Text(
              'Report Post',
              style: context.textTheme.bodyMedium?.copyWith(color: Colors.red),
            ),
          ],
        ),
      ),
    ];
  }
}
