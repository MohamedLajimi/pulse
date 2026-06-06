import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/shared/domain/events/post_event_bus.dart';
import 'package:pulse/shared/presentation/blocs/app_user/app_user_bloc.dart';
import 'package:pulse/shared/domain/entities/post_entity.dart';
import 'package:pulse/shared/domain/entities/post_media_entity.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/shared/domain/models/media_upload_models.dart';
import 'package:pulse/shared/domain/repositories/post_management_repository.dart';

part 'post_management_bloc.freezed.dart';
part 'post_management_event.dart';
part 'post_management_state.dart';

class PostManagementBloc
    extends Bloc<PostManagementEvent, PostManagementState> {
  final PostManagementRepository _repository;
  final AppUserBloc _appUserBloc;
  final PostEventBus _postEventBus;

  PostManagementBloc(this._repository, this._appUserBloc, this._postEventBus)
    : super(const PostManagementState.initial()) {
    on<GetPostById>(_onGetPostById);
    on<UploadMedia>(_onUploadMedia);
    on<CreatePost>(_onCreatePost);
    on<UpdatePost>(_onUpdatePost);
    on<DeletePost>(_onDeletePost);
    on<GetMentionSuggestions>(_onMentionSuggestions);
  }

  Future<void> _onGetPostById(
    GetPostById event,
    Emitter<PostManagementState> emit,
  ) async {
    emit(const PostManagementState.fetchingPostFormData());
    final result = await _repository.getPostFormData(event.postId);
    result.fold(
      (failure) =>
          emit(PostManagementState.fetchPostByIdError(failure.message)),
      (post) => emit(PostManagementState.postFormDataSuccess(post)),
    );
  }

  Future<void> _onUploadMedia(
    UploadMedia event,
    Emitter<PostManagementState> emit,
  ) async {
    emit(const PostManagementState.uploading());

    final userId = _getUserId();

    if (userId == null) {
      emit(
        PostManagementError(
          message: 'Your Session has expired please log in again',
        ),
      );
      return;
    }

    final result = await _repository.uploadPostMedia(
      userId: userId,
      postId: event.postId,
      jobs: event.jobs,
    );

    result.fold(
      (failure) => emit(
        PostManagementState.error(
          message: failure.message,
          failedMediaIds: event.jobs.map((job) => job.id).toList(),
        ),
      ),
      (results) {
        emit(PostManagementState.uploadSuccess(results));
      },
    );
  }

  Future<void> _onCreatePost(
    CreatePost event,
    Emitter<PostManagementState> emit,
  ) async {
    emit(const PostManagementState.submitting());

    final userId = _getUserId();

    if (userId == null) {
      emit(
        PostManagementError(
          message: 'Your Session has expired please log in again',
        ),
      );
      return;
    }

    final result = await _repository.createPost(
      id: event.id,
      userId: userId,
      caption: event.caption,
      location: event.location,
      media: event.media,
      mentions: event.mentions,
      hashtags: event.hashtags,
    );
    result.fold(
      (failure) => emit(PostManagementState.error(message: failure.message)),
      (post) {
        _postEventBus.publish(PostCreatedEvent(post));
        emit(PostManagementState.operationSuccess(post));
      },
    );
  }

  Future<void> _onUpdatePost(
    UpdatePost event,
    Emitter<PostManagementState> emit,
  ) async {
    emit(const PostManagementState.submitting());
    final result = await _repository.updatePost(
      id: event.id,
      caption: event.caption,
      location: event.location,
      mediaToInsert: event.mediaToInsert,
      mediaIdsToDelete: event.mediaIdsToDelete,
      mediaToUpdateSortOrder: event.mediaToUpdateSortOrder,
      mentionsToInsert: event.mentionsToInsert,
      mentionsToDelete: event.mentionsToDelete,
      hashtagsToInsert: event.hashtagsToInsert,
      hashtagsToDelete: event.hashtagsToDelete,
    );
    result.fold(
      (failure) => emit(PostManagementState.error(message: failure.message)),
      (post) {
        _postEventBus.publish(PostUpdatedEvent(post));
        emit(PostManagementState.operationSuccess(post));
      },
    );
  }

  Future<void> _onDeletePost(
    DeletePost event,
    Emitter<PostManagementState> emit,
  ) async {
    emit(const PostManagementState.deleting());
    final result = await _repository.deletePost(event.id);
    result.fold(
      (failure) => emit(PostManagementState.error(message: failure.message)),
      (_) {
        _postEventBus.publish(PostDeletedEvent(event.id));
        emit(PostManagementState.deleteSuccess(event.id));
      },
    );
  }

  Future<void> _onMentionSuggestions(
    GetMentionSuggestions event,
    Emitter<PostManagementState> emit,
  ) async {
    emit(const PostManagementState.fetchingSuggestions());
    final result = await _repository.getMentionSuggestions(event.query);
    result.fold(
      (failure) => emit(PostManagementState.error(message: failure.message)),
      (suggestions) => emit(PostManagementState.suggestionResults(suggestions)),
    );
  }

  String? _getUserId() =>
      _appUserBloc.state.whenOrNull(authenticated: (profile) => profile.id);
}
