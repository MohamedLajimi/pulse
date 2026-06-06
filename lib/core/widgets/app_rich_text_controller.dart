import 'package:flutter/material.dart';

class AppRichTextController extends TextEditingController {
  final Map<RegExp, TextStyle> styles;

  AppRichTextController({required this.styles, super.text});

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    required bool withComposing,
  }) {
    final List<TextSpan> children = [];

    final pattern = RegExp(styles.keys.map((reg) => reg.pattern).join('|'));

    text.splitMapJoin(
      pattern,
      onMatch: (Match match) {
        final matchText = match[0]!;

        TextStyle? matchStyle;
        for (final entry in styles.entries) {
          if (entry.key.hasMatch(matchText)) {
            matchStyle = entry.value;
            break;
          }
        }

        children.add(TextSpan(text: matchText, style: matchStyle));
        return matchText;
      },
      onNonMatch: (String nonMatch) {
        children.add(TextSpan(text: nonMatch));
        return nonMatch;
      },
    );

    return TextSpan(style: style, children: children);
  }
}
