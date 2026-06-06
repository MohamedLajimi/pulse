import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/core/theme/app_colors.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/core/widgets/app_rich_text_controller.dart';
import 'package:pulse/core/widgets/app_rich_text_field.dart';
import 'package:pulse/core/widgets/mentions_list.dart';
import 'package:pulse/features/comment/presentation/comment_actions_bloc/comment_actions_bloc.dart';
import 'package:pulse/features/comment/presentation/comment_input_cubit/comment_input_cubit.dart';

class CommentInputBar extends StatefulWidget {
  final String postId;
  const CommentInputBar({super.key, required this.postId});

  @override
  State<CommentInputBar> createState() => _CommentInputBarState();
}

class _CommentInputBarState extends State<CommentInputBar> {
  late final AppRichTextController _controller;
  bool _isInitialized = false;
  final FocusNode _focusNode = FocusNode();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!_isInitialized) {
      _controller = AppRichTextController(
        styles: {
          RegExp(r'@\w+'): const TextStyle(
            color: AppColors.verified,
            fontWeight: .w600,
          ),
          RegExp(r'#\w+'): const TextStyle(
            color: AppColors.verified,
            fontWeight: .w400,
          ),
        },
      );
      _isInitialized = true;
    }
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _focusNode.dispose();
  }


  void _onSend() {
    if (_controller.text.trim().isEmpty) return;

    final inputState = context.read<CommentInputCubit>().state;
    final actionsBloc = context.read<CommentActionsBloc>();

    return switch (inputState.mode) {
      CommentInputMode.create => actionsBloc.add(
        CommentActionsEvent.createComment(
          postId: widget.postId,
          body: _controller.text,
        ),
      ),
      CommentInputMode.reply => actionsBloc.add(
        CommentActionsEvent.createComment(
          postId: widget.postId,
          body: _controller.text,
          parentId: inputState.targetComment?.id,
        ),
      ),
      CommentInputMode.edit => actionsBloc.add(
        CommentActionsEvent.updateComment(
          commentId: inputState.targetComment!.id,
          body: _controller.text,
        ),
      ),
    };
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<CommentActionsBloc, CommentActionsState>(
          listener: (context, state) {
            state.mapOrNull(
              submitted: (_) {
                _controller.clear();
                context.read<CommentInputCubit>().reset();
                _focusNode.unfocus();
              },
              mutationSuccess: (_) {
                _controller.clear();
                context.read<CommentInputCubit>().reset();
                _focusNode.unfocus();
              },
            );
          },
        ),
        BlocListener<CommentInputCubit, CommentInputState>(
          listenWhen: (previous, current) => previous.mode != current.mode,
          listener: (context, state) {
            switch (state.mode) {
              case CommentInputMode.edit:
                _controller.clear();
                _controller.selection = TextSelection.collapsed(
                  offset: _controller.text.length,
                );
                _focusNode.requestFocus();
              case CommentInputMode.reply:
                _controller.clear();
                _focusNode.requestFocus();
              case CommentInputMode.create:
                _controller.clear();
            }
          },
        ),
      ],
      child: Container(
        padding: .only(
          bottom: MediaQuery.of(context).viewInsets.bottom + 8,
          top: 8,
          left: 16,
          right: 16,
        ),
        decoration: BoxDecoration(
          color: context.theme.scaffoldBackgroundColor,
          border: Border(
            top: BorderSide(color: context.colorScheme.outlineVariant),
          ),
        ),
        child: Column(
          mainAxisSize: .min,
          children: [
            const _InputModeHeader(),
            Row(
              crossAxisAlignment: .center,
              children: [
                Expanded(
                  child: BlocBuilder<CommentInputCubit, CommentInputState>(
                    buildWhen: (previous, current) =>
                        previous.mentionSuggestions !=
                        current.mentionSuggestions,
                    builder: (context, state) {
                      return AppRichTextField(
                        controller: _controller,
                        focusNode: _focusNode,
                        hintText: 'Add a comment...',
                        maxLines: 3,
                        onMentionSearch: (query) => context
                            .read<CommentInputCubit>()
                            .onMentionSearch(query),
                        onSearchStopped: () =>
                            context.read<CommentInputCubit>().clearMentions(),
                        suggestionOverlay: state.mentionSuggestions.isEmpty
                            ? null
                            : MentionsList(
                                suggestions: state.mentionSuggestions,
                                controller: _controller,
                                onTap: (_) => context
                                    .read<CommentInputCubit>()
                                    .clearMentions(),
                              ),
                      );
                    },
                  ),
                ),
                BlocBuilder<CommentActionsBloc, CommentActionsState>(
                  buildWhen: (previous, current) =>
                      (previous is CommentActionsSubmitting) !=
                      (current is CommentActionsSubmitting),
                  builder: (context, state) {
                    final isSubmitting = state is CommentActionsSubmitting;
                    return IconButton(
                      onPressed: isSubmitting ? null : _onSend,
                      icon: isSubmitting
                          ? const AppLoadingIndicator(size: 20)
                          : Icon(
                              Icons.send_rounded,
                              color: context.colorScheme.primary,
                            ),
                    );
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class _InputModeHeader extends StatelessWidget {
  const _InputModeHeader();

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CommentInputCubit, CommentInputState>(
      builder: (context, state) {
        if (state.mode == CommentInputMode.create) {
          return const SizedBox.shrink();
        }

        final label = state.mode == CommentInputMode.reply
            ? 'Replying to @${state.targetComment?.author?.username}'
            : 'Editing comment';

        return Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              Text(label, style: context.textTheme.labelMedium),
              const Spacer(),
              GestureDetector(
                onTap: () => context.read<CommentInputCubit>().reset(),
                child: const Icon(Icons.close, size: 16),
              ),
            ],
          ),
        );
      },
    );
  }
}
