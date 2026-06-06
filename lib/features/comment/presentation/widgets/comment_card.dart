import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pulse/core/router/route_names.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/features/comment/presentation/widgets/comment_action_row.dart';
import 'package:pulse/features/comment/presentation/widgets/replies_section.dart';
import 'comment_header.dart';
import 'comment_body.dart';

class CommentCard extends StatelessWidget {
  final CommentEntity comment;

  const CommentCard({super.key, required this.comment});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: .symmetric(horizontal: comment.isReply ? 0 : 16, vertical: 8),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          CommentHeader(comment: comment),
          const SizedBox(height: 6),
          Padding(
            padding: const .only(left: 40),
            child: Column(
              crossAxisAlignment: .start,
              children: [
                CommentBody(
                  comment: comment,
                  onMentionTapped: (userId) => context.pushNamed(
                    RouteNames.userProfile,
                    pathParameters: {'userId': userId!},
                  ),
                ),
                const SizedBox(height: 6),
                CommentActionsRow(comment: comment),

                if (!comment.isReply && comment.hasReplies) ...[
                  const SizedBox(height: 8),
                  RepliesSection(parent: comment),
                ],
              ],
            ),
          ),
        ],
      ),
    );
  }
}
