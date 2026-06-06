part of 'post_like_cubit.dart';

class PostLikeState extends Equatable {
  final bool isLiked;
  final int likeCount;
  final bool isLoading;

  const PostLikeState({
    this.isLiked = false,
    this.likeCount = 0,
    this.isLoading = false,
  });

  PostLikeState copyWith({bool? isLiked, int? likeCount, bool? isLoading}) {
    return PostLikeState(
      isLiked: isLiked ?? this.isLiked,
      likeCount: likeCount ?? this.likeCount,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object?> get props => [isLiked, likeCount, isLoading];
}
