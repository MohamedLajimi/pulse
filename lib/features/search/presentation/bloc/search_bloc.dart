import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pulse/shared/domain/entities/profile_entity.dart';
import 'package:pulse/features/search/domain/repositories/search_repository.dart';

part 'search_event.dart';
part 'search_state.dart';
part 'search_bloc.freezed.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchRepository _repository;

  SearchBloc(this._repository) : super(const SearchState()) {
    on<LoadHistoricalData>(_onLoadHistoricalData);
    on<QueryChanged>(_onQueryChanged);
    on<TabChanged>(_onTabChanged);
    on<AddPeopleHistory>(_onAddPeopleHistory);
    on<RemovePeopleHistory>(_onRemovePeopleHistory);
    on<ClearPeopleHistory>(_onClearPeopleHistory);
    on<AddHashtagHistory>(_onAddHashtagHistory);
    on<RemoveHashtagHistory>(_onRemoveHashtagHistory);
    on<ClearHashtagHistory>(_onClearHashtagHistory);
  }

  Future<void> _onLoadHistoricalData(
    LoadHistoricalData event,
    Emitter<SearchState> emit,
  ) async {
    final results = await Future.wait([
      _repository.getSearchAccountsHistory().then(
        (res) => res.getRight().toNullable() ?? [],
      ),
      _repository.getHashtagSearchHistory().then(
        (res) => res.getRight().toNullable() ?? [],
      ),
    ]);

    emit(
      state.copyWith(
        peopleHistory: results[0] as List<ProfileEntity>,
        hashtagHistory: results[1] as List<String>,
      ),
    );
  }

  Future<void> _onQueryChanged(
    QueryChanged event,
    Emitter<SearchState> emit,
  ) async {
    final query = event.query.trim();
    if (query == state.currentQuery) return;

    emit(
      state.copyWith(
        currentQuery: query,
        peopleResults: null,
        hashtagResults: null,
        errorMessage: null,
      ),
    );

    if (query.isEmpty) return;

    if (state.activeTab == SearchTab.people) {
      await _executePeopleSearch(query, emit);
    } else {
      await _executeHashtagSearch(query, emit);
    }
  }

  Future<void> _onTabChanged(
    TabChanged event,
    Emitter<SearchState> emit,
  ) async {
    if (state.activeTab == event.tab) return;

    emit(state.copyWith(activeTab: event.tab));

    if (state.currentQuery.isEmpty) return;

    if (event.tab == SearchTab.people && state.peopleResults == null) {
      await _executePeopleSearch(state.currentQuery, emit);
    } else if (event.tab == SearchTab.hashtags &&
        state.hashtagResults == null) {
      await _executeHashtagSearch(state.currentQuery, emit);
    }
  }

  Future<void> _executePeopleSearch(
    String query,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(isPeopleLoading: true, errorMessage: null));
    final result = await _repository.searchUsers(query: query);
    result.fold(
      (f) =>
          emit(state.copyWith(isPeopleLoading: false, errorMessage: f.message)),
      (users) =>
          emit(state.copyWith(isPeopleLoading: false, peopleResults: users)),
    );
  }

  Future<void> _executeHashtagSearch(
    String query,
    Emitter<SearchState> emit,
  ) async {
    emit(state.copyWith(isHashtagLoading: true, errorMessage: null));
    final result = await _repository.searchHashtags(query: query);
    result.fold(
      (f) => emit(
        state.copyWith(isHashtagLoading: false, errorMessage: f.message),
      ),
      (tags) =>
          emit(state.copyWith(isHashtagLoading: false, hashtagResults: tags)),
    );
  }

  Future<void> _onAddPeopleHistory(
    AddPeopleHistory event,
    Emitter<SearchState> emit,
  ) async {
    await _repository.saveSearchAccountHistory(profile: event.profile);
    add(const LoadHistoricalData());
  }

  Future<void> _onRemovePeopleHistory(
    RemovePeopleHistory event,
    Emitter<SearchState> emit,
  ) async {
    await _repository.removeSearchAccountHistory(id: event.id);
    final update = state.peopleHistory.where((e) => e.id != event.id).toList();
    emit(state.copyWith(peopleHistory: update));
  }

  Future<void> _onClearPeopleHistory(
    ClearPeopleHistory event,
    Emitter<SearchState> emit,
  ) async {
    await _repository.clearSearchAccountHistory();
    emit(state.copyWith(peopleHistory: []));
  }

  Future<void> _onAddHashtagHistory(
    AddHashtagHistory event,
    Emitter<SearchState> emit,
  ) async {
    await _repository.saveHashtagSearchHistory(hashtag: event.hashtag);
    add(const LoadHistoricalData());
  }

  Future<void> _onRemoveHashtagHistory(
    RemoveHashtagHistory event,
    Emitter<SearchState> emit,
  ) async {
    await _repository.removeHashtagSearchHistoryItem(hashtag: event.hashtag);
    final update = state.hashtagHistory
        .where((e) => e != event.hashtag)
        .toList();
    emit(state.copyWith(hashtagHistory: update));
  }

  Future<void> _onClearHashtagHistory(
    ClearHashtagHistory event,
    Emitter<SearchState> emit,
  ) async {
    await _repository.clearHashtagSearchHistory();
    emit(state.copyWith(hashtagHistory: []));
  }
}
