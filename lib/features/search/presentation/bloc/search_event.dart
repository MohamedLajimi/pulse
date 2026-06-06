part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.loadHistoricalData() = LoadHistoricalData;
  const factory SearchEvent.queryChanged(String query) = QueryChanged;
  const factory SearchEvent.tabChanged(SearchTab tab) = TabChanged;

  const factory SearchEvent.addPeopleHistory(ProfileEntity profile) = AddPeopleHistory;
  const factory SearchEvent.removePeopleHistory(String id) = RemovePeopleHistory;
  const factory SearchEvent.clearPeopleHistory() = ClearPeopleHistory;

  const factory SearchEvent.addHashtagHistory(String hashtag) = AddHashtagHistory;
  const factory SearchEvent.removeHashtagHistory(String hashtag) = RemoveHashtagHistory;
  const factory SearchEvent.clearHashtagHistory() = ClearHashtagHistory;
}
