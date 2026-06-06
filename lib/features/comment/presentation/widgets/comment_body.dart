import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';

class CommentBody extends StatelessWidget {
  final CommentEntity comment;
  final Function(String?)? onMentionTapped;
  const CommentBody({super.key, required this.comment, this.onMentionTapped});

  @override
  Widget build(BuildContext context) {
    return RichText(text: _buildRichText(context));
  }

  TextSpan _buildRichText(BuildContext context) {
    final body = comment.body;
    final baseStyle = context.textTheme.bodyMedium ?? const TextStyle();
    final highlightStyle = baseStyle.copyWith(
      color: AppColors.verified,
      fontWeight: FontWeight.bold,
    );

    final pattern = RegExp(r'(@\w+|#\w+)');
    final spans = <TextSpan>[];
    int lastEnd = 0;

    for (final match in pattern.allMatches(body)) {
      if (match.start > lastEnd) {
        spans.add(
          TextSpan(
            text: body.substring(lastEnd, match.start),
            style: baseStyle,
          ),
        );
      }

      final token = match.group(0)!;

      if (token.startsWith('@')) {
        final username = token.substring(1);
        String? mentionedUserId;
        if (comment.mentions.any((m) => m.$2 == username)) {
          mentionedUserId = comment.mentions
              .firstWhere((p) => p.$2.toLowerCase() == username.toLowerCase())
              .$1;
        }

        spans.add(
          TextSpan(
            text: token,
            style: highlightStyle,
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                if (mentionedUserId != null) {
                  onMentionTapped?.call(mentionedUserId);
                }
              },
          ),
        );
      } else {
        spans.add(TextSpan(text: token, style: highlightStyle));
      }

      lastEnd = match.end;
    }

    if (lastEnd < body.length) {
      spans.add(TextSpan(text: body.substring(lastEnd), style: baseStyle));
    }

    return TextSpan(children: spans);
  }
}
