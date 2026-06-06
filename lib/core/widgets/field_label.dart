import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';

class FieldLabel extends StatelessWidget {
  const FieldLabel(
    this.text, {
    super.key,
    this.style,
    this.padding = const EdgeInsets.only(bottom: 8),
  });

  final String text;
  final TextStyle? style;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Text(
        text,
        style:
            style ?? context.textTheme.bodyMedium?.copyWith(fontWeight: .w600),
      ),
    );
  }
}
