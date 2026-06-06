import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/widgets/app_avatar.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';

class MentionsList extends StatelessWidget {
  final TextEditingController controller;
  final List<ProfileEntity> suggestions;
  final Function(String) onTap;
  const MentionsList({
    super.key,
    required this.controller,
    required this.suggestions,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.card,
      borderRadius: .circular(12),
      elevation: 8,
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxHeight: 200),
        child: ListView.builder(
          shrinkWrap: true,
          padding: .zero,
          itemCount: suggestions.length,
          itemBuilder: (context, index) {
            final profile = suggestions[index];
            return ListTile(
              leading: AppAvatar(url: profile.avatarUrl),
              title: Text(
                profile.username,
                style: context.textTheme.bodyMedium,
              ),
              onTap: () {
                onTap(profile.username);

                final text = controller.text;
                final cursor = controller.selection.baseOffset;
                if (cursor > 0) {
                  final textBeforeCursor = text.substring(0, cursor);
                  final lastWordStart =
                      textBeforeCursor.lastIndexOf(RegExp(r'[\s\n]')) + 1;
                  final beforeMention = text.substring(0, lastWordStart);
                  final afterMention = text.substring(cursor);

                  controller.text =
                      '$beforeMention@${profile.username} $afterMention';
                  controller.selection = TextSelection.fromPosition(
                    TextPosition(
                      offset: '$beforeMention@${profile.username} '.length,
                    ),
                  );
                }
              },
            );
          },
        ),
      ),
    );
  }
}
