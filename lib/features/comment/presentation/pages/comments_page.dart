import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/core/widgets/app_error_widget.dart';
import 'package:pulse/core/widgets/app_loading_indicator.dart';
import 'package:pulse/features/comment/presentation/comments_bloc/comments_bloc.dart';
import 'package:pulse/features/comment/presentation/widgets/comment_card.dart';
import 'package:pulse/features/comment/presentation/widgets/comment_filter_bar.dart';
import 'package:pulse/features/comment/presentation/widgets/comment_input_bar.dart';

class CommentsPage extends StatefulWidget {
  final String postId;
  const CommentsPage({super.key, required this.postId});

  @override
  State<CommentsPage> createState() => _CommentsPageState();
}

class _CommentsPageState extends State<CommentsPage> {
  @override
  void initState() {
    _fetchInitial();
    super.initState();
  }

  void _fetchInitial() {
    context.read<CommentsBloc>().add(
      CommentsEvent.fetchInitial(postId: widget.postId),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Comments')),
      body: Column(
        children: [
          CommentFilterBar(postId: widget.postId),
          NotificationListener<ScrollEndNotification>(
            onNotification: (notification) {
              if (notification.metrics.pixels >=
                  notification.metrics.maxScrollExtent * 0.9) {
                final state = context.read<CommentsBloc>().state;
                if (state is CommentsSuccess &&
                    !state.isLoadingMore &&
                    state.hasMore) {
                  context.read<CommentsBloc>().add(
                    CommentsEvent.fetchMore(postId: widget.postId),
                  );
                }
              }
              return false;
            },
            child: Expanded(
              child: CustomScrollView(slivers: [_buildContent(context)]),
            ),
          ),
          CommentInputBar(postId: widget.postId),
        ],
      ),
    );
  }

  Widget _buildContent(BuildContext context) {
    return BlocBuilder<CommentsBloc, CommentsState>(
      builder: (context, state) {
        return state.when(
          loading: () =>
              const SliverFillRemaining(child: AppLoadingIndicator()),
          failure: (message, sortOrder) => SliverFillRemaining(
            child: AppErrorWidget(
              message: message,
              onRetry: () => context.read<CommentsBloc>().add(
                CommentsEvent.fetchInitial(
                  postId: widget.postId,
                  sortOrder: sortOrder,
                ),
              ),
            ),
          ),
          success:
              (
                comments,
                sortOrder,
                hasMore,
                currentPage,
                isLoadingMore,
                error,
              ) {
                if (comments.isEmpty) {
                  return const SliverFillRemaining(
                    child: AppEmptyWidget(
                      icon: CupertinoIcons.chat_bubble,
                      message: 'No comments yet. Be the first!',
                    ),
                  );
                }

                return SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      if (index >= comments.length) {
                        return const Padding(
                          padding: .all(16),
                          child: Center(
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        );
                      }

                      final comment = comments[index];
                      return CommentCard(
                        comment: comment,
                      );
                    },
                    childCount: hasMore ? comments.length + 1 : comments.length,
                  ),
                );
              },
        );
      },
    );
  }
}
