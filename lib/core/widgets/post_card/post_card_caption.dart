import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/theme/app_colors.dart';

class PostCardCaption extends StatefulWidget {
  final String? caption;
  final int maxLines;
  final void Function(String username)? onMentionTapped;

  const PostCardCaption({
    super.key,
    this.caption,
    this.maxLines = 5,
    this.onMentionTapped,
  });

  @override
  State<PostCardCaption> createState() => _PostCardCaptionState();
}

class _PostCardCaptionState extends State<PostCardCaption> {
  bool _isExpanded = false;

  bool _exceedsMaxLines(String text, TextStyle style, double maxWidth) {
    final textPainter = TextPainter(
      text: TextSpan(text: text, style: style),
      maxLines: widget.maxLines,
      textDirection: .ltr,
    )..layout(maxWidth: maxWidth);

    return textPainter.didExceedMaxLines;
  }

  @override
  Widget build(BuildContext context) {
    if (widget.caption == null || widget.caption!.isEmpty) {
      return const SizedBox.shrink();
    }

    final richText = _buildRichText(context);

    return Padding(
      padding: const .symmetric(horizontal: 16),
      child: LayoutBuilder(
        builder: (context, constraints) {
          final exceedsMaxLines = _exceedsMaxLines(
            widget.caption!,
            context.textTheme.bodyMedium!,
            constraints.maxWidth,
          );
          return Column(
            crossAxisAlignment: .start,
            children: [
              Text.rich(
                richText,
                maxLines: _isExpanded ? null : widget.maxLines,
                overflow: _isExpanded ? null : .ellipsis,
              ),
              if (!_isExpanded && exceedsMaxLines)
                GestureDetector(
                  onTap: () => setState(() => _isExpanded = true),
                  child: Padding(
                    padding: const .only(top: 4),
                    child: Text(
                      'more',
                      style: context.textTheme.bodyMedium?.copyWith(
                        color: context.colorScheme.secondary,
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }

  TextSpan _buildRichText(BuildContext context) {
    final caption = widget.caption!;
    final baseStyle = context.textTheme.bodyMedium ?? const TextStyle();
    final highlightStyle = baseStyle.copyWith(color: AppColors.verified);

    final pattern = RegExp(r'(@\w+|#\w+)');
    final spans = <TextSpan>[];
    int lastEnd = 0;

    for (final match in pattern.allMatches(caption)) {
      if (match.start > lastEnd) {
        spans.add(
          TextSpan(
            text: caption.substring(lastEnd, match.start),
            style: baseStyle,
          ),
        );
      }

      final token = match.group(0)!;
      final isMention = token.startsWith('@');

      spans.add(
        TextSpan(
          text: token,
          style: highlightStyle,
          recognizer: isMention && widget.onMentionTapped != null
              ? (TapGestureRecognizer()
                  ..onTap = () => widget.onMentionTapped!(token.substring(1)))
              : null,
        ),
      );

      lastEnd = match.end;
    }

    if (lastEnd < caption.length) {
      spans.add(TextSpan(text: caption.substring(lastEnd), style: baseStyle));
    }

    return TextSpan(children: spans);
  }
}
