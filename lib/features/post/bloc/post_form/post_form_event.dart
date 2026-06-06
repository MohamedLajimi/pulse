part of 'post_form_bloc.dart';

@freezed
class PostFormEvent with _$PostFormEvent {
  const factory PostFormEvent.initialize({PostEntity? existingPost}) = Initialize;
  
  const factory PostFormEvent.captionChanged(String caption) = CaptionChanged;

  const factory PostFormEvent.searchMentions(String query) = SearchMentions;
  const factory PostFormEvent.searchHashtags(String query) = SearchHashtags;
  const factory PostFormEvent.stopSearch() = StopSearch;

  const factory PostFormEvent.locationChanged(String? location) = LocationChanged;

  const factory PostFormEvent.addMedia(List<PostFormMedia> media) = AddMedia;

  const factory PostFormEvent.removeMedia(String id) = RemoveMedia;

  const factory PostFormEvent.reorderMedia({
    required int oldIndex,
    required int newIndex,
  }) = ReorderMedia;

  const factory PostFormEvent.updateMediaUrls(List<MediaUploadResult> results) =
      UpdateMediaUrls;

  const factory PostFormEvent.mentionSelected(String username) = MentionSelected;

  const factory PostFormEvent.updateMentionSuggestions(
    List<ProfileEntity> suggestions,
  ) = UpdateMentionSuggestions;

  const factory PostFormEvent.reset() = Reset;
}
