import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/features/comment/presentation/comments_bloc/comments_bloc.dart';

class CommentFilterBar extends StatelessWidget {
  final String postId;

  const CommentFilterBar({super.key, required this.postId});

  @override
  Widget build(BuildContext context) {
    return  BlocBuilder<CommentsBloc, CommentsState>(
          builder: (context, state) {
            final currentSort = state.maybeMap(
              success: (s) => s.sortOrder,
              orElse: () => CommentSortOrder.newest,
            );
            return Padding(
              padding: const .symmetric(horizontal: 16, vertical: 8),
              child: Row(
                children: [
                  ...CommentSortOrder.values.map((order) {
                    final isSelected = currentSort == order;
                    return Padding(
                      padding: const .only(right: 8),
                      child: ChoiceChip(
                        showCheckmark: false,
                        label: Text(
                          order.displayName,
                          style: TextStyle(
                            fontWeight: isSelected ? .w600 : .w400,
                          ),
                        ),
                        selected: isSelected,
                        onSelected: (selected) {
                          if (selected) {
                            context.read<CommentsBloc>().add(
                              CommentsEvent.sortChanged(
                                postId: postId,
                                sortOrder: order,
                              ),
                            );
                          }
                        },
                      ),
                    );
                  }),
                ],
              ),
            );
          },
    );
  }
}