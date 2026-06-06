// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_connections_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileConnectionsEvent {

 String get userId; ConnectionType get connectionType;
/// Create a copy of ProfileConnectionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileConnectionsEventCopyWith<ProfileConnectionsEvent> get copyWith => _$ProfileConnectionsEventCopyWithImpl<ProfileConnectionsEvent>(this as ProfileConnectionsEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileConnectionsEvent&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.connectionType, connectionType) || other.connectionType == connectionType));
}


@override
int get hashCode => Object.hash(runtimeType,userId,connectionType);

@override
String toString() {
  return 'ProfileConnectionsEvent(userId: $userId, connectionType: $connectionType)';
}


}

/// @nodoc
abstract mixin class $ProfileConnectionsEventCopyWith<$Res>  {
  factory $ProfileConnectionsEventCopyWith(ProfileConnectionsEvent value, $Res Function(ProfileConnectionsEvent) _then) = _$ProfileConnectionsEventCopyWithImpl;
@useResult
$Res call({
 String userId, ConnectionType connectionType
});




}
/// @nodoc
class _$ProfileConnectionsEventCopyWithImpl<$Res>
    implements $ProfileConnectionsEventCopyWith<$Res> {
  _$ProfileConnectionsEventCopyWithImpl(this._self, this._then);

  final ProfileConnectionsEvent _self;
  final $Res Function(ProfileConnectionsEvent) _then;

/// Create a copy of ProfileConnectionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? userId = null,Object? connectionType = null,}) {
  return _then(_self.copyWith(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,connectionType: null == connectionType ? _self.connectionType : connectionType // ignore: cast_nullable_to_non_nullable
as ConnectionType,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileConnectionsEvent].
extension ProfileConnectionsEventPatterns on ProfileConnectionsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchInitial value)?  fetchInitial,TResult Function( FetchMore value)?  fetchMore,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that);case FetchMore() when fetchMore != null:
return fetchMore(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchInitial value)  fetchInitial,required TResult Function( FetchMore value)  fetchMore,}){
final _that = this;
switch (_that) {
case FetchInitial():
return fetchInitial(_that);case FetchMore():
return fetchMore(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchInitial value)?  fetchInitial,TResult? Function( FetchMore value)?  fetchMore,}){
final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that);case FetchMore() when fetchMore != null:
return fetchMore(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId,  ConnectionType connectionType)?  fetchInitial,TResult Function( String userId,  ConnectionType connectionType)?  fetchMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that.userId,_that.connectionType);case FetchMore() when fetchMore != null:
return fetchMore(_that.userId,_that.connectionType);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId,  ConnectionType connectionType)  fetchInitial,required TResult Function( String userId,  ConnectionType connectionType)  fetchMore,}) {final _that = this;
switch (_that) {
case FetchInitial():
return fetchInitial(_that.userId,_that.connectionType);case FetchMore():
return fetchMore(_that.userId,_that.connectionType);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId,  ConnectionType connectionType)?  fetchInitial,TResult? Function( String userId,  ConnectionType connectionType)?  fetchMore,}) {final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that.userId,_that.connectionType);case FetchMore() when fetchMore != null:
return fetchMore(_that.userId,_that.connectionType);case _:
  return null;

}
}

}

/// @nodoc


class FetchInitial implements ProfileConnectionsEvent {
  const FetchInitial({required this.userId, required this.connectionType});
  

@override final  String userId;
@override final  ConnectionType connectionType;

/// Create a copy of ProfileConnectionsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchInitialCopyWith<FetchInitial> get copyWith => _$FetchInitialCopyWithImpl<FetchInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchInitial&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.connectionType, connectionType) || other.connectionType == connectionType));
}


@override
int get hashCode => Object.hash(runtimeType,userId,connectionType);

@override
String toString() {
  return 'ProfileConnectionsEvent.fetchInitial(userId: $userId, connectionType: $connectionType)';
}


}

/// @nodoc
abstract mixin class $FetchInitialCopyWith<$Res> implements $ProfileConnectionsEventCopyWith<$Res> {
  factory $FetchInitialCopyWith(FetchInitial value, $Res Function(FetchInitial) _then) = _$FetchInitialCopyWithImpl;
@override @useResult
$Res call({
 String userId, ConnectionType connectionType
});




}
/// @nodoc
class _$FetchInitialCopyWithImpl<$Res>
    implements $FetchInitialCopyWith<$Res> {
  _$FetchInitialCopyWithImpl(this._self, this._then);

  final FetchInitial _self;
  final $Res Function(FetchInitial) _then;

/// Create a copy of ProfileConnectionsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? connectionType = null,}) {
  return _then(FetchInitial(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,connectionType: null == connectionType ? _self.connectionType : connectionType // ignore: cast_nullable_to_non_nullable
as ConnectionType,
  ));
}


}

/// @nodoc


class FetchMore implements ProfileConnectionsEvent {
  const FetchMore({required this.userId, required this.connectionType});
  

@override final  String userId;
@override final  ConnectionType connectionType;

/// Create a copy of ProfileConnectionsEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchMoreCopyWith<FetchMore> get copyWith => _$FetchMoreCopyWithImpl<FetchMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchMore&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.connectionType, connectionType) || other.connectionType == connectionType));
}


@override
int get hashCode => Object.hash(runtimeType,userId,connectionType);

@override
String toString() {
  return 'ProfileConnectionsEvent.fetchMore(userId: $userId, connectionType: $connectionType)';
}


}

/// @nodoc
abstract mixin class $FetchMoreCopyWith<$Res> implements $ProfileConnectionsEventCopyWith<$Res> {
  factory $FetchMoreCopyWith(FetchMore value, $Res Function(FetchMore) _then) = _$FetchMoreCopyWithImpl;
@override @useResult
$Res call({
 String userId, ConnectionType connectionType
});




}
/// @nodoc
class _$FetchMoreCopyWithImpl<$Res>
    implements $FetchMoreCopyWith<$Res> {
  _$FetchMoreCopyWithImpl(this._self, this._then);

  final FetchMore _self;
  final $Res Function(FetchMore) _then;

/// Create a copy of ProfileConnectionsEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? userId = null,Object? connectionType = null,}) {
  return _then(FetchMore(
userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,connectionType: null == connectionType ? _self.connectionType : connectionType // ignore: cast_nullable_to_non_nullable
as ConnectionType,
  ));
}


}

/// @nodoc
mixin _$ProfileConnectionsState {

 ProfileConnectionsStatus get status; List<ProfileEntity> get profiles; int get currentPage; bool get hasMore; String? get errorMessage;
/// Create a copy of ProfileConnectionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileConnectionsStateCopyWith<ProfileConnectionsState> get copyWith => _$ProfileConnectionsStateCopyWithImpl<ProfileConnectionsState>(this as ProfileConnectionsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileConnectionsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.profiles, profiles)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(profiles),currentPage,hasMore,errorMessage);

@override
String toString() {
  return 'ProfileConnectionsState(status: $status, profiles: $profiles, currentPage: $currentPage, hasMore: $hasMore, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ProfileConnectionsStateCopyWith<$Res>  {
  factory $ProfileConnectionsStateCopyWith(ProfileConnectionsState value, $Res Function(ProfileConnectionsState) _then) = _$ProfileConnectionsStateCopyWithImpl;
@useResult
$Res call({
 ProfileConnectionsStatus status, List<ProfileEntity> profiles, int currentPage, bool hasMore, String? errorMessage
});




}
/// @nodoc
class _$ProfileConnectionsStateCopyWithImpl<$Res>
    implements $ProfileConnectionsStateCopyWith<$Res> {
  _$ProfileConnectionsStateCopyWithImpl(this._self, this._then);

  final ProfileConnectionsState _self;
  final $Res Function(ProfileConnectionsState) _then;

/// Create a copy of ProfileConnectionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? profiles = null,Object? currentPage = null,Object? hasMore = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfileConnectionsStatus,profiles: null == profiles ? _self.profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileConnectionsState].
extension ProfileConnectionsStatePatterns on ProfileConnectionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileConnectionsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileConnectionsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileConnectionsState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileConnectionsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileConnectionsState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileConnectionsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( ProfileConnectionsStatus status,  List<ProfileEntity> profiles,  int currentPage,  bool hasMore,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileConnectionsState() when $default != null:
return $default(_that.status,_that.profiles,_that.currentPage,_that.hasMore,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( ProfileConnectionsStatus status,  List<ProfileEntity> profiles,  int currentPage,  bool hasMore,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ProfileConnectionsState():
return $default(_that.status,_that.profiles,_that.currentPage,_that.hasMore,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( ProfileConnectionsStatus status,  List<ProfileEntity> profiles,  int currentPage,  bool hasMore,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ProfileConnectionsState() when $default != null:
return $default(_that.status,_that.profiles,_that.currentPage,_that.hasMore,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileConnectionsState implements ProfileConnectionsState {
  const _ProfileConnectionsState({this.status = ProfileConnectionsStatus.initial, final  List<ProfileEntity> profiles = const [], this.currentPage = 0, this.hasMore = true, this.errorMessage}): _profiles = profiles;
  

@override@JsonKey() final  ProfileConnectionsStatus status;
 final  List<ProfileEntity> _profiles;
@override@JsonKey() List<ProfileEntity> get profiles {
  if (_profiles is EqualUnmodifiableListView) return _profiles;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_profiles);
}

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override final  String? errorMessage;

/// Create a copy of ProfileConnectionsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileConnectionsStateCopyWith<_ProfileConnectionsState> get copyWith => __$ProfileConnectionsStateCopyWithImpl<_ProfileConnectionsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileConnectionsState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._profiles, _profiles)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_profiles),currentPage,hasMore,errorMessage);

@override
String toString() {
  return 'ProfileConnectionsState(status: $status, profiles: $profiles, currentPage: $currentPage, hasMore: $hasMore, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ProfileConnectionsStateCopyWith<$Res> implements $ProfileConnectionsStateCopyWith<$Res> {
  factory _$ProfileConnectionsStateCopyWith(_ProfileConnectionsState value, $Res Function(_ProfileConnectionsState) _then) = __$ProfileConnectionsStateCopyWithImpl;
@override @useResult
$Res call({
 ProfileConnectionsStatus status, List<ProfileEntity> profiles, int currentPage, bool hasMore, String? errorMessage
});




}
/// @nodoc
class __$ProfileConnectionsStateCopyWithImpl<$Res>
    implements _$ProfileConnectionsStateCopyWith<$Res> {
  __$ProfileConnectionsStateCopyWithImpl(this._self, this._then);

  final _ProfileConnectionsState _self;
  final $Res Function(_ProfileConnectionsState) _then;

/// Create a copy of ProfileConnectionsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? profiles = null,Object? currentPage = null,Object? hasMore = null,Object? errorMessage = freezed,}) {
  return _then(_ProfileConnectionsState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfileConnectionsStatus,profiles: null == profiles ? _self._profiles : profiles // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
