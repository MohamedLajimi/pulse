part of 'search_bloc.dart';

enum SearchTab { people, hashtags }

@freezed
sealed class SearchState with _$SearchState {
  const factory SearchState({
    @Default(SearchTab.people) SearchTab activeTab,
    @Default('') String currentQuery,

    @Default([]) List<ProfileEntity> peopleHistory,
    List<ProfileEntity>? peopleResults,
    @Default(false) bool isPeopleLoading,

    @Default([]) List<String> hashtagHistory,
    List<String>? hashtagResults,
    @Default(false) bool isHashtagLoading,

    String? errorMessage,
  }) = _SearchState;
}

extension SearchStateX on SearchState {
  bool get isShowingHistory => currentQuery.isEmpty;
}
