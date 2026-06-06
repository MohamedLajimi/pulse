import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/core/utils/debouncer.dart';
import 'package:pulse/features/comment/domain/entities/comment_entity.dart';
import 'package:pulse/features/search/domain/repositories/search_repository.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';

part 'comment_input_state.dart';
part 'comment_input_cubit.freezed.dart';

class CommentInputCubit extends Cubit<CommentInputState> {
  final SearchRepository _searchRepository;
  Debouncer? _debouncer;

  CommentInputCubit(this._searchRepository) : super(const CommentInputState());

  void setReplyMode(CommentEntity parent) => emit(
    CommentInputState(
      mode: CommentInputMode.reply,
      targetComment: parent,
      mentionSuggestions: [],
    ),
  );

  void setEditMode(CommentEntity comment) => emit(
    CommentInputState(
      mode: CommentInputMode.edit,
      targetComment: comment,
      mentionSuggestions: [],
    ),
  );

  void onMentionSearch(String query) {
    _debouncer?.cancel();
    emit(state.copyWith(isSearchingMentions: true));

    _debouncer = Debouncer(duration: const Duration(milliseconds: 300));
    _debouncer?.run(() async {
      if (isClosed) return;

      final result = await _searchRepository.searchUsers(query: query);
      if (isClosed) return;

      result.fold(
        (_) => emit(
          state.copyWith(mentionSuggestions: [], isSearchingMentions: false),
        ),
        (profiles) => emit(
          state.copyWith(
            mentionSuggestions: profiles,
            isSearchingMentions: false,
          ),
        ),
      );
    });
  }

  void clearMentions() {
    _debouncer?.cancel();
    if (state.mentionSuggestions.isEmpty && !state.isSearchingMentions) return;
    emit(state.copyWith(mentionSuggestions: [], isSearchingMentions: false));
  }

  @override
  Future<void> close() {
    _debouncer?.cancel();
    return super.close();
  }

  void reset() => emit(const CommentInputState());
}
