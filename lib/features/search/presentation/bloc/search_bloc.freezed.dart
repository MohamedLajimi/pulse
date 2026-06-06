// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent()';
}


}

/// @nodoc
class $SearchEventCopyWith<$Res>  {
$SearchEventCopyWith(SearchEvent _, $Res Function(SearchEvent) __);
}


/// Adds pattern-matching-related methods to [SearchEvent].
extension SearchEventPatterns on SearchEvent {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( LoadHistoricalData value)?  loadHistoricalData,TResult Function( QueryChanged value)?  queryChanged,TResult Function( TabChanged value)?  tabChanged,TResult Function( AddPeopleHistory value)?  addPeopleHistory,TResult Function( RemovePeopleHistory value)?  removePeopleHistory,TResult Function( ClearPeopleHistory value)?  clearPeopleHistory,TResult Function( AddHashtagHistory value)?  addHashtagHistory,TResult Function( RemoveHashtagHistory value)?  removeHashtagHistory,TResult Function( ClearHashtagHistory value)?  clearHashtagHistory,required TResult orElse(),}){
final _that = this;
switch (_that) {
case LoadHistoricalData() when loadHistoricalData != null:
return loadHistoricalData(_that);case QueryChanged() when queryChanged != null:
return queryChanged(_that);case TabChanged() when tabChanged != null:
return tabChanged(_that);case AddPeopleHistory() when addPeopleHistory != null:
return addPeopleHistory(_that);case RemovePeopleHistory() when removePeopleHistory != null:
return removePeopleHistory(_that);case ClearPeopleHistory() when clearPeopleHistory != null:
return clearPeopleHistory(_that);case AddHashtagHistory() when addHashtagHistory != null:
return addHashtagHistory(_that);case RemoveHashtagHistory() when removeHashtagHistory != null:
return removeHashtagHistory(_that);case ClearHashtagHistory() when clearHashtagHistory != null:
return clearHashtagHistory(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( LoadHistoricalData value)  loadHistoricalData,required TResult Function( QueryChanged value)  queryChanged,required TResult Function( TabChanged value)  tabChanged,required TResult Function( AddPeopleHistory value)  addPeopleHistory,required TResult Function( RemovePeopleHistory value)  removePeopleHistory,required TResult Function( ClearPeopleHistory value)  clearPeopleHistory,required TResult Function( AddHashtagHistory value)  addHashtagHistory,required TResult Function( RemoveHashtagHistory value)  removeHashtagHistory,required TResult Function( ClearHashtagHistory value)  clearHashtagHistory,}){
final _that = this;
switch (_that) {
case LoadHistoricalData():
return loadHistoricalData(_that);case QueryChanged():
return queryChanged(_that);case TabChanged():
return tabChanged(_that);case AddPeopleHistory():
return addPeopleHistory(_that);case RemovePeopleHistory():
return removePeopleHistory(_that);case ClearPeopleHistory():
return clearPeopleHistory(_that);case AddHashtagHistory():
return addHashtagHistory(_that);case RemoveHashtagHistory():
return removeHashtagHistory(_that);case ClearHashtagHistory():
return clearHashtagHistory(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( LoadHistoricalData value)?  loadHistoricalData,TResult? Function( QueryChanged value)?  queryChanged,TResult? Function( TabChanged value)?  tabChanged,TResult? Function( AddPeopleHistory value)?  addPeopleHistory,TResult? Function( RemovePeopleHistory value)?  removePeopleHistory,TResult? Function( ClearPeopleHistory value)?  clearPeopleHistory,TResult? Function( AddHashtagHistory value)?  addHashtagHistory,TResult? Function( RemoveHashtagHistory value)?  removeHashtagHistory,TResult? Function( ClearHashtagHistory value)?  clearHashtagHistory,}){
final _that = this;
switch (_that) {
case LoadHistoricalData() when loadHistoricalData != null:
return loadHistoricalData(_that);case QueryChanged() when queryChanged != null:
return queryChanged(_that);case TabChanged() when tabChanged != null:
return tabChanged(_that);case AddPeopleHistory() when addPeopleHistory != null:
return addPeopleHistory(_that);case RemovePeopleHistory() when removePeopleHistory != null:
return removePeopleHistory(_that);case ClearPeopleHistory() when clearPeopleHistory != null:
return clearPeopleHistory(_that);case AddHashtagHistory() when addHashtagHistory != null:
return addHashtagHistory(_that);case RemoveHashtagHistory() when removeHashtagHistory != null:
return removeHashtagHistory(_that);case ClearHashtagHistory() when clearHashtagHistory != null:
return clearHashtagHistory(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loadHistoricalData,TResult Function( String query)?  queryChanged,TResult Function( SearchTab tab)?  tabChanged,TResult Function( ProfileEntity profile)?  addPeopleHistory,TResult Function( String id)?  removePeopleHistory,TResult Function()?  clearPeopleHistory,TResult Function( String hashtag)?  addHashtagHistory,TResult Function( String hashtag)?  removeHashtagHistory,TResult Function()?  clearHashtagHistory,required TResult orElse(),}) {final _that = this;
switch (_that) {
case LoadHistoricalData() when loadHistoricalData != null:
return loadHistoricalData();case QueryChanged() when queryChanged != null:
return queryChanged(_that.query);case TabChanged() when tabChanged != null:
return tabChanged(_that.tab);case AddPeopleHistory() when addPeopleHistory != null:
return addPeopleHistory(_that.profile);case RemovePeopleHistory() when removePeopleHistory != null:
return removePeopleHistory(_that.id);case ClearPeopleHistory() when clearPeopleHistory != null:
return clearPeopleHistory();case AddHashtagHistory() when addHashtagHistory != null:
return addHashtagHistory(_that.hashtag);case RemoveHashtagHistory() when removeHashtagHistory != null:
return removeHashtagHistory(_that.hashtag);case ClearHashtagHistory() when clearHashtagHistory != null:
return clearHashtagHistory();case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loadHistoricalData,required TResult Function( String query)  queryChanged,required TResult Function( SearchTab tab)  tabChanged,required TResult Function( ProfileEntity profile)  addPeopleHistory,required TResult Function( String id)  removePeopleHistory,required TResult Function()  clearPeopleHistory,required TResult Function( String hashtag)  addHashtagHistory,required TResult Function( String hashtag)  removeHashtagHistory,required TResult Function()  clearHashtagHistory,}) {final _that = this;
switch (_that) {
case LoadHistoricalData():
return loadHistoricalData();case QueryChanged():
return queryChanged(_that.query);case TabChanged():
return tabChanged(_that.tab);case AddPeopleHistory():
return addPeopleHistory(_that.profile);case RemovePeopleHistory():
return removePeopleHistory(_that.id);case ClearPeopleHistory():
return clearPeopleHistory();case AddHashtagHistory():
return addHashtagHistory(_that.hashtag);case RemoveHashtagHistory():
return removeHashtagHistory(_that.hashtag);case ClearHashtagHistory():
return clearHashtagHistory();case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loadHistoricalData,TResult? Function( String query)?  queryChanged,TResult? Function( SearchTab tab)?  tabChanged,TResult? Function( ProfileEntity profile)?  addPeopleHistory,TResult? Function( String id)?  removePeopleHistory,TResult? Function()?  clearPeopleHistory,TResult? Function( String hashtag)?  addHashtagHistory,TResult? Function( String hashtag)?  removeHashtagHistory,TResult? Function()?  clearHashtagHistory,}) {final _that = this;
switch (_that) {
case LoadHistoricalData() when loadHistoricalData != null:
return loadHistoricalData();case QueryChanged() when queryChanged != null:
return queryChanged(_that.query);case TabChanged() when tabChanged != null:
return tabChanged(_that.tab);case AddPeopleHistory() when addPeopleHistory != null:
return addPeopleHistory(_that.profile);case RemovePeopleHistory() when removePeopleHistory != null:
return removePeopleHistory(_that.id);case ClearPeopleHistory() when clearPeopleHistory != null:
return clearPeopleHistory();case AddHashtagHistory() when addHashtagHistory != null:
return addHashtagHistory(_that.hashtag);case RemoveHashtagHistory() when removeHashtagHistory != null:
return removeHashtagHistory(_that.hashtag);case ClearHashtagHistory() when clearHashtagHistory != null:
return clearHashtagHistory();case _:
  return null;

}
}

}

/// @nodoc


class LoadHistoricalData implements SearchEvent {
  const LoadHistoricalData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadHistoricalData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.loadHistoricalData()';
}


}




/// @nodoc


class QueryChanged implements SearchEvent {
  const QueryChanged(this.query);
  

 final  String query;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$QueryChangedCopyWith<QueryChanged> get copyWith => _$QueryChangedCopyWithImpl<QueryChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is QueryChanged&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'SearchEvent.queryChanged(query: $query)';
}


}

/// @nodoc
abstract mixin class $QueryChangedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $QueryChangedCopyWith(QueryChanged value, $Res Function(QueryChanged) _then) = _$QueryChangedCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$QueryChangedCopyWithImpl<$Res>
    implements $QueryChangedCopyWith<$Res> {
  _$QueryChangedCopyWithImpl(this._self, this._then);

  final QueryChanged _self;
  final $Res Function(QueryChanged) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(QueryChanged(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class TabChanged implements SearchEvent {
  const TabChanged(this.tab);
  

 final  SearchTab tab;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$TabChangedCopyWith<TabChanged> get copyWith => _$TabChangedCopyWithImpl<TabChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is TabChanged&&(identical(other.tab, tab) || other.tab == tab));
}


@override
int get hashCode => Object.hash(runtimeType,tab);

@override
String toString() {
  return 'SearchEvent.tabChanged(tab: $tab)';
}


}

/// @nodoc
abstract mixin class $TabChangedCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $TabChangedCopyWith(TabChanged value, $Res Function(TabChanged) _then) = _$TabChangedCopyWithImpl;
@useResult
$Res call({
 SearchTab tab
});




}
/// @nodoc
class _$TabChangedCopyWithImpl<$Res>
    implements $TabChangedCopyWith<$Res> {
  _$TabChangedCopyWithImpl(this._self, this._then);

  final TabChanged _self;
  final $Res Function(TabChanged) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? tab = null,}) {
  return _then(TabChanged(
null == tab ? _self.tab : tab // ignore: cast_nullable_to_non_nullable
as SearchTab,
  ));
}


}

/// @nodoc


class AddPeopleHistory implements SearchEvent {
  const AddPeopleHistory(this.profile);
  

 final  ProfileEntity profile;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddPeopleHistoryCopyWith<AddPeopleHistory> get copyWith => _$AddPeopleHistoryCopyWithImpl<AddPeopleHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddPeopleHistory&&(identical(other.profile, profile) || other.profile == profile));
}


@override
int get hashCode => Object.hash(runtimeType,profile);

@override
String toString() {
  return 'SearchEvent.addPeopleHistory(profile: $profile)';
}


}

/// @nodoc
abstract mixin class $AddPeopleHistoryCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $AddPeopleHistoryCopyWith(AddPeopleHistory value, $Res Function(AddPeopleHistory) _then) = _$AddPeopleHistoryCopyWithImpl;
@useResult
$Res call({
 ProfileEntity profile
});




}
/// @nodoc
class _$AddPeopleHistoryCopyWithImpl<$Res>
    implements $AddPeopleHistoryCopyWith<$Res> {
  _$AddPeopleHistoryCopyWithImpl(this._self, this._then);

  final AddPeopleHistory _self;
  final $Res Function(AddPeopleHistory) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,}) {
  return _then(AddPeopleHistory(
null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileEntity,
  ));
}


}

/// @nodoc


class RemovePeopleHistory implements SearchEvent {
  const RemovePeopleHistory(this.id);
  

 final  String id;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemovePeopleHistoryCopyWith<RemovePeopleHistory> get copyWith => _$RemovePeopleHistoryCopyWithImpl<RemovePeopleHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemovePeopleHistory&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'SearchEvent.removePeopleHistory(id: $id)';
}


}

/// @nodoc
abstract mixin class $RemovePeopleHistoryCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $RemovePeopleHistoryCopyWith(RemovePeopleHistory value, $Res Function(RemovePeopleHistory) _then) = _$RemovePeopleHistoryCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$RemovePeopleHistoryCopyWithImpl<$Res>
    implements $RemovePeopleHistoryCopyWith<$Res> {
  _$RemovePeopleHistoryCopyWithImpl(this._self, this._then);

  final RemovePeopleHistory _self;
  final $Res Function(RemovePeopleHistory) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(RemovePeopleHistory(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearPeopleHistory implements SearchEvent {
  const ClearPeopleHistory();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearPeopleHistory);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.clearPeopleHistory()';
}


}




/// @nodoc


class AddHashtagHistory implements SearchEvent {
  const AddHashtagHistory(this.hashtag);
  

 final  String hashtag;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddHashtagHistoryCopyWith<AddHashtagHistory> get copyWith => _$AddHashtagHistoryCopyWithImpl<AddHashtagHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddHashtagHistory&&(identical(other.hashtag, hashtag) || other.hashtag == hashtag));
}


@override
int get hashCode => Object.hash(runtimeType,hashtag);

@override
String toString() {
  return 'SearchEvent.addHashtagHistory(hashtag: $hashtag)';
}


}

/// @nodoc
abstract mixin class $AddHashtagHistoryCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $AddHashtagHistoryCopyWith(AddHashtagHistory value, $Res Function(AddHashtagHistory) _then) = _$AddHashtagHistoryCopyWithImpl;
@useResult
$Res call({
 String hashtag
});




}
/// @nodoc
class _$AddHashtagHistoryCopyWithImpl<$Res>
    implements $AddHashtagHistoryCopyWith<$Res> {
  _$AddHashtagHistoryCopyWithImpl(this._self, this._then);

  final AddHashtagHistory _self;
  final $Res Function(AddHashtagHistory) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hashtag = null,}) {
  return _then(AddHashtagHistory(
null == hashtag ? _self.hashtag : hashtag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RemoveHashtagHistory implements SearchEvent {
  const RemoveHashtagHistory(this.hashtag);
  

 final  String hashtag;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveHashtagHistoryCopyWith<RemoveHashtagHistory> get copyWith => _$RemoveHashtagHistoryCopyWithImpl<RemoveHashtagHistory>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveHashtagHistory&&(identical(other.hashtag, hashtag) || other.hashtag == hashtag));
}


@override
int get hashCode => Object.hash(runtimeType,hashtag);

@override
String toString() {
  return 'SearchEvent.removeHashtagHistory(hashtag: $hashtag)';
}


}

/// @nodoc
abstract mixin class $RemoveHashtagHistoryCopyWith<$Res> implements $SearchEventCopyWith<$Res> {
  factory $RemoveHashtagHistoryCopyWith(RemoveHashtagHistory value, $Res Function(RemoveHashtagHistory) _then) = _$RemoveHashtagHistoryCopyWithImpl;
@useResult
$Res call({
 String hashtag
});




}
/// @nodoc
class _$RemoveHashtagHistoryCopyWithImpl<$Res>
    implements $RemoveHashtagHistoryCopyWith<$Res> {
  _$RemoveHashtagHistoryCopyWithImpl(this._self, this._then);

  final RemoveHashtagHistory _self;
  final $Res Function(RemoveHashtagHistory) _then;

/// Create a copy of SearchEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hashtag = null,}) {
  return _then(RemoveHashtagHistory(
null == hashtag ? _self.hashtag : hashtag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ClearHashtagHistory implements SearchEvent {
  const ClearHashtagHistory();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClearHashtagHistory);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'SearchEvent.clearHashtagHistory()';
}


}




/// @nodoc
mixin _$SearchState {

 SearchTab get activeTab; String get currentQuery; List<ProfileEntity> get peopleHistory; List<ProfileEntity>? get peopleResults; bool get isPeopleLoading; List<String> get hashtagHistory; List<String>? get hashtagResults; bool get isHashtagLoading; String? get errorMessage;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.activeTab, activeTab) || other.activeTab == activeTab)&&(identical(other.currentQuery, currentQuery) || other.currentQuery == currentQuery)&&const DeepCollectionEquality().equals(other.peopleHistory, peopleHistory)&&const DeepCollectionEquality().equals(other.peopleResults, peopleResults)&&(identical(other.isPeopleLoading, isPeopleLoading) || other.isPeopleLoading == isPeopleLoading)&&const DeepCollectionEquality().equals(other.hashtagHistory, hashtagHistory)&&const DeepCollectionEquality().equals(other.hashtagResults, hashtagResults)&&(identical(other.isHashtagLoading, isHashtagLoading) || other.isHashtagLoading == isHashtagLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,activeTab,currentQuery,const DeepCollectionEquality().hash(peopleHistory),const DeepCollectionEquality().hash(peopleResults),isPeopleLoading,const DeepCollectionEquality().hash(hashtagHistory),const DeepCollectionEquality().hash(hashtagResults),isHashtagLoading,errorMessage);

@override
String toString() {
  return 'SearchState(activeTab: $activeTab, currentQuery: $currentQuery, peopleHistory: $peopleHistory, peopleResults: $peopleResults, isPeopleLoading: $isPeopleLoading, hashtagHistory: $hashtagHistory, hashtagResults: $hashtagResults, isHashtagLoading: $isHashtagLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 SearchTab activeTab, String currentQuery, List<ProfileEntity> peopleHistory, List<ProfileEntity>? peopleResults, bool isPeopleLoading, List<String> hashtagHistory, List<String>? hashtagResults, bool isHashtagLoading, String? errorMessage
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? activeTab = null,Object? currentQuery = null,Object? peopleHistory = null,Object? peopleResults = freezed,Object? isPeopleLoading = null,Object? hashtagHistory = null,Object? hashtagResults = freezed,Object? isHashtagLoading = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
activeTab: null == activeTab ? _self.activeTab : activeTab // ignore: cast_nullable_to_non_nullable
as SearchTab,currentQuery: null == currentQuery ? _self.currentQuery : currentQuery // ignore: cast_nullable_to_non_nullable
as String,peopleHistory: null == peopleHistory ? _self.peopleHistory : peopleHistory // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>,peopleResults: freezed == peopleResults ? _self.peopleResults : peopleResults // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>?,isPeopleLoading: null == isPeopleLoading ? _self.isPeopleLoading : isPeopleLoading // ignore: cast_nullable_to_non_nullable
as bool,hashtagHistory: null == hashtagHistory ? _self.hashtagHistory : hashtagHistory // ignore: cast_nullable_to_non_nullable
as List<String>,hashtagResults: freezed == hashtagResults ? _self.hashtagResults : hashtagResults // ignore: cast_nullable_to_non_nullable
as List<String>?,isHashtagLoading: null == isHashtagLoading ? _self.isHashtagLoading : isHashtagLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
return $default(_that);}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SearchTab activeTab,  String currentQuery,  List<ProfileEntity> peopleHistory,  List<ProfileEntity>? peopleResults,  bool isPeopleLoading,  List<String> hashtagHistory,  List<String>? hashtagResults,  bool isHashtagLoading,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.activeTab,_that.currentQuery,_that.peopleHistory,_that.peopleResults,_that.isPeopleLoading,_that.hashtagHistory,_that.hashtagResults,_that.isHashtagLoading,_that.errorMessage);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SearchTab activeTab,  String currentQuery,  List<ProfileEntity> peopleHistory,  List<ProfileEntity>? peopleResults,  bool isPeopleLoading,  List<String> hashtagHistory,  List<String>? hashtagResults,  bool isHashtagLoading,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.activeTab,_that.currentQuery,_that.peopleHistory,_that.peopleResults,_that.isPeopleLoading,_that.hashtagHistory,_that.hashtagResults,_that.isHashtagLoading,_that.errorMessage);}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SearchTab activeTab,  String currentQuery,  List<ProfileEntity> peopleHistory,  List<ProfileEntity>? peopleResults,  bool isPeopleLoading,  List<String> hashtagHistory,  List<String>? hashtagResults,  bool isHashtagLoading,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.activeTab,_that.currentQuery,_that.peopleHistory,_that.peopleResults,_that.isPeopleLoading,_that.hashtagHistory,_that.hashtagResults,_that.isHashtagLoading,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({this.activeTab = SearchTab.people, this.currentQuery = '', final  List<ProfileEntity> peopleHistory = const [], final  List<ProfileEntity>? peopleResults, this.isPeopleLoading = false, final  List<String> hashtagHistory = const [], final  List<String>? hashtagResults, this.isHashtagLoading = false, this.errorMessage}): _peopleHistory = peopleHistory,_peopleResults = peopleResults,_hashtagHistory = hashtagHistory,_hashtagResults = hashtagResults;
  

@override@JsonKey() final  SearchTab activeTab;
@override@JsonKey() final  String currentQuery;
 final  List<ProfileEntity> _peopleHistory;
@override@JsonKey() List<ProfileEntity> get peopleHistory {
  if (_peopleHistory is EqualUnmodifiableListView) return _peopleHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_peopleHistory);
}

 final  List<ProfileEntity>? _peopleResults;
@override List<ProfileEntity>? get peopleResults {
  final value = _peopleResults;
  if (value == null) return null;
  if (_peopleResults is EqualUnmodifiableListView) return _peopleResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool isPeopleLoading;
 final  List<String> _hashtagHistory;
@override@JsonKey() List<String> get hashtagHistory {
  if (_hashtagHistory is EqualUnmodifiableListView) return _hashtagHistory;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtagHistory);
}

 final  List<String>? _hashtagResults;
@override List<String>? get hashtagResults {
  final value = _hashtagResults;
  if (value == null) return null;
  if (_hashtagResults is EqualUnmodifiableListView) return _hashtagResults;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(value);
}

@override@JsonKey() final  bool isHashtagLoading;
@override final  String? errorMessage;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.activeTab, activeTab) || other.activeTab == activeTab)&&(identical(other.currentQuery, currentQuery) || other.currentQuery == currentQuery)&&const DeepCollectionEquality().equals(other._peopleHistory, _peopleHistory)&&const DeepCollectionEquality().equals(other._peopleResults, _peopleResults)&&(identical(other.isPeopleLoading, isPeopleLoading) || other.isPeopleLoading == isPeopleLoading)&&const DeepCollectionEquality().equals(other._hashtagHistory, _hashtagHistory)&&const DeepCollectionEquality().equals(other._hashtagResults, _hashtagResults)&&(identical(other.isHashtagLoading, isHashtagLoading) || other.isHashtagLoading == isHashtagLoading)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,activeTab,currentQuery,const DeepCollectionEquality().hash(_peopleHistory),const DeepCollectionEquality().hash(_peopleResults),isPeopleLoading,const DeepCollectionEquality().hash(_hashtagHistory),const DeepCollectionEquality().hash(_hashtagResults),isHashtagLoading,errorMessage);

@override
String toString() {
  return 'SearchState(activeTab: $activeTab, currentQuery: $currentQuery, peopleHistory: $peopleHistory, peopleResults: $peopleResults, isPeopleLoading: $isPeopleLoading, hashtagHistory: $hashtagHistory, hashtagResults: $hashtagResults, isHashtagLoading: $isHashtagLoading, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 SearchTab activeTab, String currentQuery, List<ProfileEntity> peopleHistory, List<ProfileEntity>? peopleResults, bool isPeopleLoading, List<String> hashtagHistory, List<String>? hashtagResults, bool isHashtagLoading, String? errorMessage
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? activeTab = null,Object? currentQuery = null,Object? peopleHistory = null,Object? peopleResults = freezed,Object? isPeopleLoading = null,Object? hashtagHistory = null,Object? hashtagResults = freezed,Object? isHashtagLoading = null,Object? errorMessage = freezed,}) {
  return _then(_SearchState(
activeTab: null == activeTab ? _self.activeTab : activeTab // ignore: cast_nullable_to_non_nullable
as SearchTab,currentQuery: null == currentQuery ? _self.currentQuery : currentQuery // ignore: cast_nullable_to_non_nullable
as String,peopleHistory: null == peopleHistory ? _self._peopleHistory : peopleHistory // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>,peopleResults: freezed == peopleResults ? _self._peopleResults : peopleResults // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>?,isPeopleLoading: null == isPeopleLoading ? _self.isPeopleLoading : isPeopleLoading // ignore: cast_nullable_to_non_nullable
as bool,hashtagHistory: null == hashtagHistory ? _self._hashtagHistory : hashtagHistory // ignore: cast_nullable_to_non_nullable
as List<String>,hashtagResults: freezed == hashtagResults ? _self._hashtagResults : hashtagResults // ignore: cast_nullable_to_non_nullable
as List<String>?,isHashtagLoading: null == isHashtagLoading ? _self.isHashtagLoading : isHashtagLoading // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
