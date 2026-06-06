part of 'profile_posts_bloc.dart';

@freezed
sealed class ProfilePostsEvent with _$ProfilePostsEvent {
  const factory ProfilePostsEvent.fetchInitial(String userId) = FetchInitial;
  const factory ProfilePostsEvent.fetchMore(String userId) = FetchMore;
  const factory ProfilePostsEvent.removePost(String postId) = RemovePost;
  const factory ProfilePostsEvent.replacePost(PostEntity post) = ReplacePost;
}
