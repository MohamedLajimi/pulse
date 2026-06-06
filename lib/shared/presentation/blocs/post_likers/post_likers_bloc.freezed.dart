// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_likers_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostLikersEvent {

 String get postId;
/// Create a copy of PostLikersEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostLikersEventCopyWith<PostLikersEvent> get copyWith => _$PostLikersEventCopyWithImpl<PostLikersEvent>(this as PostLikersEvent, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostLikersEvent&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostLikersEvent(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $PostLikersEventCopyWith<$Res>  {
  factory $PostLikersEventCopyWith(PostLikersEvent value, $Res Function(PostLikersEvent) _then) = _$PostLikersEventCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$PostLikersEventCopyWithImpl<$Res>
    implements $PostLikersEventCopyWith<$Res> {
  _$PostLikersEventCopyWithImpl(this._self, this._then);

  final PostLikersEvent _self;
  final $Res Function(PostLikersEvent) _then;

/// Create a copy of PostLikersEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? postId = null,}) {
  return _then(_self.copyWith(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [PostLikersEvent].
extension PostLikersEventPatterns on PostLikersEvent {
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String postId)?  fetchInitial,TResult Function( String postId)?  fetchMore,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that.postId);case FetchMore() when fetchMore != null:
return fetchMore(_that.postId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String postId)  fetchInitial,required TResult Function( String postId)  fetchMore,}) {final _that = this;
switch (_that) {
case FetchInitial():
return fetchInitial(_that.postId);case FetchMore():
return fetchMore(_that.postId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String postId)?  fetchInitial,TResult? Function( String postId)?  fetchMore,}) {final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that.postId);case FetchMore() when fetchMore != null:
return fetchMore(_that.postId);case _:
  return null;

}
}

}

/// @nodoc


class FetchInitial implements PostLikersEvent {
  const FetchInitial(this.postId);
  

@override final  String postId;

/// Create a copy of PostLikersEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchInitialCopyWith<FetchInitial> get copyWith => _$FetchInitialCopyWithImpl<FetchInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchInitial&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostLikersEvent.fetchInitial(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $FetchInitialCopyWith<$Res> implements $PostLikersEventCopyWith<$Res> {
  factory $FetchInitialCopyWith(FetchInitial value, $Res Function(FetchInitial) _then) = _$FetchInitialCopyWithImpl;
@override @useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$FetchInitialCopyWithImpl<$Res>
    implements $FetchInitialCopyWith<$Res> {
  _$FetchInitialCopyWithImpl(this._self, this._then);

  final FetchInitial _self;
  final $Res Function(FetchInitial) _then;

/// Create a copy of PostLikersEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(FetchInitial(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FetchMore implements PostLikersEvent {
  const FetchMore(this.postId);
  

@override final  String postId;

/// Create a copy of PostLikersEvent
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchMoreCopyWith<FetchMore> get copyWith => _$FetchMoreCopyWithImpl<FetchMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchMore&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostLikersEvent.fetchMore(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $FetchMoreCopyWith<$Res> implements $PostLikersEventCopyWith<$Res> {
  factory $FetchMoreCopyWith(FetchMore value, $Res Function(FetchMore) _then) = _$FetchMoreCopyWithImpl;
@override @useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$FetchMoreCopyWithImpl<$Res>
    implements $FetchMoreCopyWith<$Res> {
  _$FetchMoreCopyWithImpl(this._self, this._then);

  final FetchMore _self;
  final $Res Function(FetchMore) _then;

/// Create a copy of PostLikersEvent
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(FetchMore(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PostLikersState {

 PostLikersStatus get status; List<ProfileEntity> get likers; int get currentPage; bool get hasMore; String? get errorMessage;
/// Create a copy of PostLikersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostLikersStateCopyWith<PostLikersState> get copyWith => _$PostLikersStateCopyWithImpl<PostLikersState>(this as PostLikersState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostLikersState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.likers, likers)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(likers),currentPage,hasMore,errorMessage);

@override
String toString() {
  return 'PostLikersState(status: $status, likers: $likers, currentPage: $currentPage, hasMore: $hasMore, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $PostLikersStateCopyWith<$Res>  {
  factory $PostLikersStateCopyWith(PostLikersState value, $Res Function(PostLikersState) _then) = _$PostLikersStateCopyWithImpl;
@useResult
$Res call({
 PostLikersStatus status, List<ProfileEntity> likers, int currentPage, bool hasMore, String? errorMessage
});




}
/// @nodoc
class _$PostLikersStateCopyWithImpl<$Res>
    implements $PostLikersStateCopyWith<$Res> {
  _$PostLikersStateCopyWithImpl(this._self, this._then);

  final PostLikersState _self;
  final $Res Function(PostLikersState) _then;

/// Create a copy of PostLikersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? likers = null,Object? currentPage = null,Object? hasMore = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostLikersStatus,likers: null == likers ? _self.likers : likers // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PostLikersState].
extension PostLikersStatePatterns on PostLikersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostLikersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostLikersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostLikersState value)  $default,){
final _that = this;
switch (_that) {
case _PostLikersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostLikersState value)?  $default,){
final _that = this;
switch (_that) {
case _PostLikersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PostLikersStatus status,  List<ProfileEntity> likers,  int currentPage,  bool hasMore,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostLikersState() when $default != null:
return $default(_that.status,_that.likers,_that.currentPage,_that.hasMore,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PostLikersStatus status,  List<ProfileEntity> likers,  int currentPage,  bool hasMore,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _PostLikersState():
return $default(_that.status,_that.likers,_that.currentPage,_that.hasMore,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PostLikersStatus status,  List<ProfileEntity> likers,  int currentPage,  bool hasMore,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _PostLikersState() when $default != null:
return $default(_that.status,_that.likers,_that.currentPage,_that.hasMore,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _PostLikersState implements PostLikersState {
  const _PostLikersState({this.status = PostLikersStatus.initial, final  List<ProfileEntity> likers = const [], this.currentPage = 0, this.hasMore = true, this.errorMessage}): _likers = likers;
  

@override@JsonKey() final  PostLikersStatus status;
 final  List<ProfileEntity> _likers;
@override@JsonKey() List<ProfileEntity> get likers {
  if (_likers is EqualUnmodifiableListView) return _likers;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_likers);
}

@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override final  String? errorMessage;

/// Create a copy of PostLikersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostLikersStateCopyWith<_PostLikersState> get copyWith => __$PostLikersStateCopyWithImpl<_PostLikersState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostLikersState&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other._likers, _likers)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,const DeepCollectionEquality().hash(_likers),currentPage,hasMore,errorMessage);

@override
String toString() {
  return 'PostLikersState(status: $status, likers: $likers, currentPage: $currentPage, hasMore: $hasMore, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$PostLikersStateCopyWith<$Res> implements $PostLikersStateCopyWith<$Res> {
  factory _$PostLikersStateCopyWith(_PostLikersState value, $Res Function(_PostLikersState) _then) = __$PostLikersStateCopyWithImpl;
@override @useResult
$Res call({
 PostLikersStatus status, List<ProfileEntity> likers, int currentPage, bool hasMore, String? errorMessage
});




}
/// @nodoc
class __$PostLikersStateCopyWithImpl<$Res>
    implements _$PostLikersStateCopyWith<$Res> {
  __$PostLikersStateCopyWithImpl(this._self, this._then);

  final _PostLikersState _self;
  final $Res Function(_PostLikersState) _then;

/// Create a copy of PostLikersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? likers = null,Object? currentPage = null,Object? hasMore = null,Object? errorMessage = freezed,}) {
  return _then(_PostLikersState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as PostLikersStatus,likers: null == likers ? _self._likers : likers // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
