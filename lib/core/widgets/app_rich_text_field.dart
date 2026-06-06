import 'package:flutter/material.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'app_rich_text_controller.dart';

class AppRichTextField extends StatefulWidget {
  final AppRichTextController controller;
  final FocusNode? focusNode;
  final String? hintText;
  final int maxLines;
  final int? maxLength;
  final ValueChanged<String>? onChanged;
  final Function(String query)? onMentionSearch;
  final Function(String query)? onHashtagSearch;
  final VoidCallback? onSearchStopped;
  final Widget? suggestionOverlay;
  final VoidCallback? onSubmitted;

  const AppRichTextField({
    super.key,
    required this.controller,
    this.focusNode,
    this.hintText,
    this.maxLines = 5,
    this.maxLength,
    this.onChanged,
    this.onMentionSearch,
    this.onHashtagSearch,
    this.onSearchStopped,
    this.suggestionOverlay,
    this.onSubmitted,
  });

  @override
  State<AppRichTextField> createState() => _AppRichTextFieldState();
}

class _AppRichTextFieldState extends State<AppRichTextField> {
  final OverlayPortalController _overlayController = OverlayPortalController();

  @override
  void initState() {
    super.initState();
    widget.controller.addListener(_handleSearch);
  }

  @override
  void didUpdateWidget(covariant AppRichTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.suggestionOverlay != null &&
        oldWidget.suggestionOverlay == null &&
        !_overlayController.isShowing) {
      _startSearch();
    } else if (widget.suggestionOverlay == null &&
        _overlayController.isShowing) {
      _stopSearch();
    }
  }

  @override
  void dispose() {
    widget.controller.removeListener(_handleSearch);
    super.dispose();
  }

  void _handleSearch() {
    final value = widget.controller.text;
    final selection = widget.controller.selection;

    if (!selection.isCollapsed || selection.baseOffset < 0) {
      _stopSearch();
      return;
    }

    final cursor = selection.baseOffset;
    final textBeforeCursor = value.substring(0, cursor);

    final lastWordStart = textBeforeCursor.lastIndexOf(RegExp(r'[\s\n]')) + 1;
    final currentWord = textBeforeCursor.substring(lastWordStart);

    if (currentWord.startsWith('@')) {
      final query = currentWord.substring(1);
      if (query.isNotEmpty) {
        widget.onMentionSearch?.call(query);
        _startSearch();
      } else {
        _stopSearch();
      }
    } else if (currentWord.startsWith('#')) {
      final query = currentWord.substring(1);
      if (query.isNotEmpty) {
        widget.onHashtagSearch?.call(query);
        _startSearch();
      } else {
        _stopSearch();
      }
    } else {
      _stopSearch();
    }
  }

  void _startSearch() {
    if (!_overlayController.isShowing && widget.suggestionOverlay != null) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && !_overlayController.isShowing) {
          _overlayController.show();
        }
      });
    }
  }

  void _stopSearch() {
    if (_overlayController.isShowing) {
      WidgetsBinding.instance.addPostFrameCallback((_) {
        if (mounted && _overlayController.isShowing) {
          _overlayController.hide();
        }
      });
    }
    widget.onSearchStopped?.call();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: .min,
      crossAxisAlignment: .stretch,
      children: [
        OverlayPortal(
          controller: _overlayController,
          overlayChildBuilder: (context) {
            return Positioned(
              left: 16,
              right: 16,
              bottom: MediaQuery.of(context).viewInsets.bottom + 60,
              child: widget.suggestionOverlay ?? const SizedBox.shrink(),
            );
          },
          child: const SizedBox.shrink(),
        ),
        TextField(
          controller: widget.controller,
          focusNode: widget.focusNode,
          maxLines: widget.maxLines,
          maxLength: widget.maxLength,
          onChanged: widget.onChanged,
          textCapitalization: .sentences,

          style: context.textTheme.bodyMedium?.copyWith(
            fontWeight: .w500,
            color: context.colorScheme.onSurface,
          ),
          decoration: InputDecoration(
            border: .none,
            enabledBorder: .none,
            focusedBorder: .none,
            errorBorder: .none,
            disabledBorder: .none,
            fillColor: context.theme.scaffoldBackgroundColor,
            hintText: widget.hintText,
            hintStyle: context.textTheme.bodyMedium?.copyWith(
              fontWeight: .w500,
              color: context.colorScheme.secondary,
            ),
          ),
        ),
      ],
    );
  }
}
