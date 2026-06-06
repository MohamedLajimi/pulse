import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/core/di/service_locator.dart';
import 'package:pulse/core/extensions/context_extensions.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/features/comment/presentation/comments_replies_bloc/comment_replies_bloc.dart';
import 'comment_card.dart';

class RepliesSection extends StatefulWidget {
  final CommentEntity parent;

  const RepliesSection({super.key, required this.parent});

  @override
  State<RepliesSection> createState() => _RepliesSectionState();
}

class _RepliesSectionState extends State<RepliesSection> {
  CommentRepliesBloc? _bloc;
  bool _expanded = false;

  void _expand() {
    setState(() {
      _expanded = true;
      _bloc ??= sl<CommentRepliesBloc>()
        ..add(CommentRepliesEvent.fetchInitial(parentId: widget.parent.id));
    });
  }

  @override
  void dispose() {
    _bloc?.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_expanded) {
      return _ViewRepliesButton(
        replyCount: widget.parent.repliesCount,
        onTap: _expand,
      );
    }

    return BlocProvider.value(
      value: _bloc!,
      child: BlocBuilder<CommentRepliesBloc, CommentRepliesState>(
        builder: (context, state) {
          return state.when(
            loading: () => const Padding(
              padding: .only(left: 40, top: 8),
              child: SizedBox(
                height: 20,
                width: 20,
                child: CircularProgressIndicator.adaptive(strokeWidth: 2),
              ),
            ),
            failure: (message) => Padding(
              padding: const .only(left: 40, top: 8),
              child: GestureDetector(
                onTap: () => _bloc?.add(
                  CommentRepliesEvent.fetchInitial(parentId: widget.parent.id),
                ),
                child: Text(
                  'Failed to load replies. Tap to retry.',
                  style: context.textTheme.labelSmall?.copyWith(
                    color: context.colorScheme.error,
                  ),
                ),
              ),
            ),
            success:
                (
                  parentId,
                  replies,
                  hasMore,
                  currentPage,
                  isLoadingMore,
                  loadingMoreError,
                ) {
                  return Column(
                    crossAxisAlignment: .start,
                    children: [
                      ...replies.map((reply) => CommentCard(comment: reply)),

                      if (hasMore)
                        _LoadMoreRepliesButton(
                          isLoading: isLoadingMore,
                          error: loadingMoreError,
                          onTap: () =>
                              _bloc?.add(const CommentRepliesEvent.fetchMore()),
                        ),

                      Padding(
                        padding: const .only(top: 4),
                        child: GestureDetector(
                          onTap: () => setState(() => _expanded = false),
                          child: Text(
                            'Hide replies',
                            style: context.textTheme.labelSmall?.copyWith(
                              color: context.colorScheme.onSurfaceVariant,
                              fontWeight: .w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
          );
        },
      ),
    );
  }
}

class _ViewRepliesButton extends StatelessWidget {
  final int replyCount;
  final VoidCallback onTap;

  const _ViewRepliesButton({required this.replyCount, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .only(top: 4),
      child: GestureDetector(
        onTap: onTap,
        child: Row(
          children: [
            const Divider(indent: 0, endIndent: 8, thickness: 1),
            Text(
              'View replies',
              style: context.textTheme.labelSmall?.copyWith(
                fontWeight: .w600,
                color: context.colorScheme.onSurfaceVariant,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoadMoreRepliesButton extends StatelessWidget {
  final bool isLoading;
  final String? error;
  final VoidCallback onTap;

  const _LoadMoreRepliesButton({
    required this.isLoading,
    required this.error,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const .only(left: 40, top: 4),
      child: GestureDetector(
        onTap: isLoading ? null : onTap,
        child: isLoading
            ? const SizedBox(
                height: 16,
                width: 16,
                child: CircularProgressIndicator.adaptive(strokeWidth: 1.5),
              )
            : Text(
                error != null
                    ? 'Failed to load. Tap to retry.'
                    : 'Load more replies',
                style: context.textTheme.labelSmall?.copyWith(
                  fontWeight: .w600,
                  color: error != null
                      ? context.colorScheme.error
                      : context.colorScheme.onSurfaceVariant,
                ),
              ),
      ),
    );
  }
}
