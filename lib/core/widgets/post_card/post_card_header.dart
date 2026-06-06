import 'package:flutter/cupertino.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/widgets/app_avatar.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:timeago/timeago.dart' as timeago;

class PostCardHeader extends StatelessWidget {
  final ProfileEntity author;
  final bool isEdited;
  final DateTime createdAt;
  final VoidCallback? onUserTapped;
  final Widget? trailing;

  const PostCardHeader({
    super.key,
    required this.author,
    required this.isEdited,
    required this.createdAt,
    this.onUserTapped,
    this.trailing,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .fromLTRB(16, 0, 16, 8),
      child: Row(
        children: [
          GestureDetector(
            onTap: onUserTapped,
            child: AppAvatar(url: author.avatarUrl, radius: 18),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: GestureDetector(
              onTap: onUserTapped,
              child: Column(
                crossAxisAlignment: .start,
                children: [
                  Text(
                    author.displayName,
                    style: context.textTheme.titleMedium?.copyWith(
                      fontWeight: .bold,
                    ),
                    maxLines: 1,
                    overflow: .ellipsis,
                  ),
                  Row(
                    children: [
                      Text(
                        timeago.format(createdAt),
                        style: context.textTheme.bodySmall,
                      ),

                      if (isEdited) ...[
                        const SizedBox(width: 12),
                        Icon(
                          CupertinoIcons.pen,
                          size: 12,
                          color: context.colorScheme.secondary,
                        ),
                        const SizedBox(width: 4),
                        Text('Edited', style: context.textTheme.bodySmall),
                      ],
                    ],
                  ),
                ],
              ),
            ),
          ),
          ?trailing,
        ],
      ),
    );
  }
}
