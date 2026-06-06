import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pulse/shared/domain/repositories/post_like_repository.dart';

part 'post_like_state.dart';

class PostLikeCubit extends Cubit<PostLikeState> {
  PostLikeCubit({required PostLikeRepository likeRepository})
    : _likeRepository = likeRepository,
      super(const PostLikeState());

  final PostLikeRepository _likeRepository;

  void initialize({required bool isLiked, required int likeCount}) {
    emit(state.copyWith(isLiked: isLiked, likeCount: likeCount));
  }

  Future<void> toggleLike(String postId) async {
    if (state.isLoading) return;

    final previousState = state;

    emit(
      PostLikeState(
        isLiked: !state.isLiked,
        likeCount: state.isLiked ? state.likeCount - 1 : state.likeCount + 1,
        isLoading: true,
      ),
    );

    final result = previousState.isLiked
        ? await _likeRepository.unlikePost(postId)
        : await _likeRepository.likePost(postId);

    result.fold(
      (_) => emit(previousState),
      (_) => emit(state.copyWith(isLoading: false)),
    );
  }
}
