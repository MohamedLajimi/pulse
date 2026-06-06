import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:pulse/features/post/bloc/post_form/post_form_media.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';
import 'package:pulse/shared/domain/entities/post_media_entity.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/media_upload_models.dart';
import 'package:uuid/uuid.dart';

part 'post_form_bloc.freezed.dart';
part 'post_form_event.dart';
part 'post_form_state.dart';

class PostFormBloc extends Bloc<PostFormEvent, PostFormState> {
  PostFormBloc() : super(PostFormState(id: const Uuid().v4())) {
    on<Initialize>(_onInitialize);
    on<CaptionChanged>(_onCaptionChanged);
    on<SearchMentions>(_onSearchMentions);
    on<SearchHashtags>(_onSearchHashtags);
    on<StopSearch>(_onStopSearch);
    on<LocationChanged>(_onLocationChanged);
    on<AddMedia>(_onAddMedia);
    on<RemoveMedia>(_onRemoveMedia);
    on<ReorderMedia>(_onReorderMedia);
    on<UpdateMediaUrls>(_onUpdateMediaUrls);
    on<MentionSelected>(_onMentionSelected);
    on<UpdateMentionSuggestions>(_onUpdateMentionSuggestions);
    on<Reset>(_onReset);
  }

  void _onInitialize(Initialize event, Emitter<PostFormState> emit) {
    if (event.existingPost == null) {
      emit(PostFormState(id: const Uuid().v4()));
      return;
    }

    final post = event.existingPost!;

    final mediaItems = post.media
        .map(
          (m) => PostFormMedia(
            id: m.id,
            type: m.type,
            remoteUrl: m.url,
            remoteThumbnail: m.thumbnailUrl,
            width: m.width,
            height: m.height,
            durationMs: m.durationMs,
          ),
        )
        .toList();

    emit(
      PostFormState(
        id: post.id,
        caption: post.caption ?? '',
        location: post.location,
        mediaList: mediaItems,
        mentions: post.mentions.map((m) => m.profile.username).toList(),
        hashtags: post.hashtags.map((h) => h.hashtag).toList(),
        isEditMode: true,
        originalPostId: post.id,
        existingPost: post,
      ),
    );
  }

  void _onCaptionChanged(CaptionChanged event, Emitter<PostFormState> emit) {
    final caption = event.caption;
    final hashtagRegex = RegExp(r'#(\w+)');
    final mentionRegex = RegExp(r'@(\w+)');

    final hashtags = hashtagRegex
        .allMatches(caption)
        .map((m) => m.group(1)!)
        .toSet()
        .toList();
    final mentions = mentionRegex
        .allMatches(caption)
        .map((m) => m.group(1)!)
        .toSet()
        .toList();

    emit(
      state.copyWith(caption: caption, hashtags: hashtags, mentions: mentions),
    );
  }

  void _onSearchMentions(SearchMentions event, Emitter<PostFormState> emit) {
    emit(state.copyWith(isSearchingMention: true, mentionQuery: event.query));
  }

  void _onSearchHashtags(SearchHashtags event, Emitter<PostFormState> emit) {
    emit(state.copyWith(isSearchingHashtag: true, hashtagQuery: event.query));
  }

  void _onStopSearch(StopSearch event, Emitter<PostFormState> emit) {
    emit(
      state.copyWith(
        isSearchingMention: false,
        isSearchingHashtag: false,
        mentionQuery: '',
        hashtagQuery: '',
        mentionSuggestions: [],
      ),
    );
  }

  void _onLocationChanged(LocationChanged event, Emitter<PostFormState> emit) {
    emit(state.copyWith(location: event.location));
  }

  void _onAddMedia(AddMedia event, Emitter<PostFormState> emit) {
    final newList = List<PostFormMedia>.from(state.mediaList)
      ..addAll(event.media);
    emit(state.copyWith(mediaList: newList));
  }

  void _onRemoveMedia(RemoveMedia event, Emitter<PostFormState> emit) {
    final newList = state.mediaList.where((m) => m.id != event.id).toList();
    emit(state.copyWith(mediaList: newList));
  }

  void _onReorderMedia(ReorderMedia event, Emitter<PostFormState> emit) {
    final mediaList = List<PostFormMedia>.from(state.mediaList);

    if (event.oldIndex < 0 || event.oldIndex >= mediaList.length) return;
    int newIndex = event.newIndex;
    if (newIndex > event.oldIndex) {
      newIndex -= 1;
    }
    if (newIndex < 0 || newIndex >= mediaList.length) return;

    final item = mediaList.removeAt(event.oldIndex);
    mediaList.insert(newIndex, item);

    emit(state.copyWith(mediaList: mediaList));
  }

  void _onUpdateMediaUrls(UpdateMediaUrls event, Emitter<PostFormState> emit) {
    final mediaList = state.mediaList.map((media) {
      final result = event.results.where((r) => r.id == media.id).firstOrNull;
      if (result != null) {
        return media.copyWith(
          remoteUrl: result.url,
          remoteThumbnail: result.thumbnailUrl,
        );
      }
      return media;
    }).toList();

    emit(state.copyWith(mediaList: mediaList));
  }

  void _onMentionSelected(MentionSelected event, Emitter<PostFormState> emit) {
    final caption = state.caption;
    final query = '@${state.mentionQuery}';
    final replacement = '@${event.username} ';
    if (!state.isSearchingMention) return;

    final newCaption = caption.replaceFirst(query, replacement);

    emit(
      state.copyWith(
        caption: newCaption,
        isSearchingMention: false,
        mentionQuery: '',
        mentionSuggestions: [],
      ),
    );
    add(PostFormEvent.captionChanged(newCaption));
  }

  void _onUpdateMentionSuggestions(
    UpdateMentionSuggestions event,
    Emitter<PostFormState> emit,
  ) {
    emit(state.copyWith(mentionSuggestions: event.suggestions));
  }

  void _onReset(Reset event, Emitter<PostFormState> emit) {
    emit(PostFormState(id: const Uuid().v4()));
  }
}
