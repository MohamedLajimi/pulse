// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_media_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileMediaEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileMediaEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileMediaEvent()';
}


}

/// @nodoc
class $ProfileMediaEventCopyWith<$Res>  {
$ProfileMediaEventCopyWith(ProfileMediaEvent _, $Res Function(ProfileMediaEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileMediaEvent].
extension ProfileMediaEventPatterns on ProfileMediaEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchInitial value)?  fetchInitial,TResult Function( FetchMore value)?  fetchMore,TResult Function( RemovePostMedia value)?  removePostMedia,TResult Function( UpdatePostMedia value)?  updatePostMedia,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that);case FetchMore() when fetchMore != null:
return fetchMore(_that);case RemovePostMedia() when removePostMedia != null:
return removePostMedia(_that);case UpdatePostMedia() when updatePostMedia != null:
return updatePostMedia(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchInitial value)  fetchInitial,required TResult Function( FetchMore value)  fetchMore,required TResult Function( RemovePostMedia value)  removePostMedia,required TResult Function( UpdatePostMedia value)  updatePostMedia,}){
final _that = this;
switch (_that) {
case FetchInitial():
return fetchInitial(_that);case FetchMore():
return fetchMore(_that);case RemovePostMedia():
return removePostMedia(_that);case UpdatePostMedia():
return updatePostMedia(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchInitial value)?  fetchInitial,TResult? Function( FetchMore value)?  fetchMore,TResult? Function( RemovePostMedia value)?  removePostMedia,TResult? Function( UpdatePostMedia value)?  updatePostMedia,}){
final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that);case FetchMore() when fetchMore != null:
return fetchMore(_that);case RemovePostMedia() when removePostMedia != null:
return removePostMedia(_that);case UpdatePostMedia() when updatePostMedia != null:
return updatePostMedia(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  fetchInitial,TResult Function( String userId)?  fetchMore,TResult Function( String postId)?  removePostMedia,TResult Function( String postId,  List<PostMediaEntity> newMedia)?  updatePostMedia,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that.userId);case FetchMore() when fetchMore != null:
return fetchMore(_that.userId);case RemovePostMedia() when removePostMedia != null:
return removePostMedia(_that.postId);case UpdatePostMedia() when updatePostMedia != null:
return updatePostMedia(_that.postId,_that.newMedia);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  fetchInitial,required TResult Function( String userId)  fetchMore,required TResult Function( String postId)  removePostMedia,required TResult Function( String postId,  List<PostMediaEntity> newMedia)  updatePostMedia,}) {final _that = this;
switch (_that) {
case FetchInitial():
return fetchInitial(_that.userId);case FetchMore():
return fetchMore(_that.userId);case RemovePostMedia():
return removePostMedia(_that.postId);case UpdatePostMedia():
return updatePostMedia(_that.postId,_that.newMedia);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  fetchInitial,TResult? Function( String userId)?  fetchMore,TResult? Function( String postId)?  removePostMedia,TResult? Function( String postId,  List<PostMediaEntity> newMedia)?  updatePostMedia,}) {final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that.userId);case FetchMore() when fetchMore != null:
return fetchMore(_that.userId);case RemovePostMedia() when removePostMedia != null:
return removePostMedia(_that.postId);case UpdatePostMedia() when updatePostMedia != null:
return updatePostMedia(_that.postId,_that.newMedia);case _:
  return null;

}
}

}

/// @nodoc


class FetchInitial implements ProfileMediaEvent {
  const FetchInitial(this.userId);
  

 final  String userId;

/// Create a copy of ProfileMediaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchInitialCopyWith<FetchInitial> get copyWith => _$FetchInitialCopyWithImpl<FetchInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchInitial&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ProfileMediaEvent.fetchInitial(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $FetchInitialCopyWith<$Res> implements $ProfileMediaEventCopyWith<$Res> {
  factory $FetchInitialCopyWith(FetchInitial value, $Res Function(FetchInitial) _then) = _$FetchInitialCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$FetchInitialCopyWithImpl<$Res>
    implements $FetchInitialCopyWith<$Res> {
  _$FetchInitialCopyWithImpl(this._self, this._then);

  final FetchInitial _self;
  final $Res Function(FetchInitial) _then;

/// Create a copy of ProfileMediaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(FetchInitial(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FetchMore implements ProfileMediaEvent {
  const FetchMore(this.userId);
  

 final  String userId;

/// Create a copy of ProfileMediaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchMoreCopyWith<FetchMore> get copyWith => _$FetchMoreCopyWithImpl<FetchMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchMore&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ProfileMediaEvent.fetchMore(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $FetchMoreCopyWith<$Res> implements $ProfileMediaEventCopyWith<$Res> {
  factory $FetchMoreCopyWith(FetchMore value, $Res Function(FetchMore) _then) = _$FetchMoreCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$FetchMoreCopyWithImpl<$Res>
    implements $FetchMoreCopyWith<$Res> {
  _$FetchMoreCopyWithImpl(this._self, this._then);

  final FetchMore _self;
  final $Res Function(FetchMore) _then;

/// Create a copy of ProfileMediaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(FetchMore(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RemovePostMedia implements ProfileMediaEvent {
  const RemovePostMedia(this.postId);
  

 final  String postId;

/// Create a copy of ProfileMediaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemovePostMediaCopyWith<RemovePostMedia> get copyWith => _$RemovePostMediaCopyWithImpl<RemovePostMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemovePostMedia&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'ProfileMediaEvent.removePostMedia(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $RemovePostMediaCopyWith<$Res> implements $ProfileMediaEventCopyWith<$Res> {
  factory $RemovePostMediaCopyWith(RemovePostMedia value, $Res Function(RemovePostMedia) _then) = _$RemovePostMediaCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$RemovePostMediaCopyWithImpl<$Res>
    implements $RemovePostMediaCopyWith<$Res> {
  _$RemovePostMediaCopyWithImpl(this._self, this._then);

  final RemovePostMedia _self;
  final $Res Function(RemovePostMedia) _then;

/// Create a copy of ProfileMediaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(RemovePostMedia(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdatePostMedia implements ProfileMediaEvent {
  const UpdatePostMedia({required this.postId, required final  List<PostMediaEntity> newMedia}): _newMedia = newMedia;
  

 final  String postId;
 final  List<PostMediaEntity> _newMedia;
 List<PostMediaEntity> get newMedia {
  if (_newMedia is EqualUnmodifiableListView) return _newMedia;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_newMedia);
}


/// Create a copy of ProfileMediaEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePostMediaCopyWith<UpdatePostMedia> get copyWith => _$UpdatePostMediaCopyWithImpl<UpdatePostMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePostMedia&&(identical(other.postId, postId) || other.postId == postId)&&const DeepCollectionEquality().equals(other._newMedia, _newMedia));
}


@override
int get hashCode => Object.hash(runtimeType,postId,const DeepCollectionEquality().hash(_newMedia));

@override
String toString() {
  return 'ProfileMediaEvent.updatePostMedia(postId: $postId, newMedia: $newMedia)';
}


}

/// @nodoc
abstract mixin class $UpdatePostMediaCopyWith<$Res> implements $ProfileMediaEventCopyWith<$Res> {
  factory $UpdatePostMediaCopyWith(UpdatePostMedia value, $Res Function(UpdatePostMedia) _then) = _$UpdatePostMediaCopyWithImpl;
@useResult
$Res call({
 String postId, List<PostMediaEntity> newMedia
});




}
/// @nodoc
class _$UpdatePostMediaCopyWithImpl<$Res>
    implements $UpdatePostMediaCopyWith<$Res> {
  _$UpdatePostMediaCopyWithImpl(this._self, this._then);

  final UpdatePostMedia _self;
  final $Res Function(UpdatePostMedia) _then;

/// Create a copy of ProfileMediaEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? newMedia = null,}) {
  return _then(UpdatePostMedia(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,newMedia: null == newMedia ? _self._newMedia : newMedia // ignore: cast_nullable_to_non_nullable
as List<PostMediaEntity>,
  ));
}


}

/// @nodoc
mixin _$ProfileMediaState {

 List<PostMediaEntity> get media; ProfileMediaStatus get status; int get currentPage; bool get hasMore; String? get errorMessage;
/// Create a copy of ProfileMediaState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileMediaStateCopyWith<ProfileMediaState> get copyWith => _$ProfileMediaStateCopyWithImpl<ProfileMediaState>(this as ProfileMediaState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileMediaState&&const DeepCollectionEquality().equals(other.media, media)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(media),status,currentPage,hasMore,errorMessage);

@override
String toString() {
  return 'ProfileMediaState(media: $media, status: $status, currentPage: $currentPage, hasMore: $hasMore, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ProfileMediaStateCopyWith<$Res>  {
  factory $ProfileMediaStateCopyWith(ProfileMediaState value, $Res Function(ProfileMediaState) _then) = _$ProfileMediaStateCopyWithImpl;
@useResult
$Res call({
 List<PostMediaEntity> media, ProfileMediaStatus status, int currentPage, bool hasMore, String? errorMessage
});




}
/// @nodoc
class _$ProfileMediaStateCopyWithImpl<$Res>
    implements $ProfileMediaStateCopyWith<$Res> {
  _$ProfileMediaStateCopyWithImpl(this._self, this._then);

  final ProfileMediaState _self;
  final $Res Function(ProfileMediaState) _then;

/// Create a copy of ProfileMediaState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? media = null,Object? status = null,Object? currentPage = null,Object? hasMore = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
media: null == media ? _self.media : media // ignore: cast_nullable_to_non_nullable
as List<PostMediaEntity>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfileMediaStatus,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileMediaState].
extension ProfileMediaStatePatterns on ProfileMediaState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileMediaState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileMediaState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileMediaState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileMediaState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileMediaState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileMediaState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PostMediaEntity> media,  ProfileMediaStatus status,  int currentPage,  bool hasMore,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileMediaState() when $default != null:
return $default(_that.media,_that.status,_that.currentPage,_that.hasMore,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PostMediaEntity> media,  ProfileMediaStatus status,  int currentPage,  bool hasMore,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ProfileMediaState():
return $default(_that.media,_that.status,_that.currentPage,_that.hasMore,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PostMediaEntity> media,  ProfileMediaStatus status,  int currentPage,  bool hasMore,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ProfileMediaState() when $default != null:
return $default(_that.media,_that.status,_that.currentPage,_that.hasMore,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileMediaState implements ProfileMediaState {
  const _ProfileMediaState({final  List<PostMediaEntity> media = const [], this.status = ProfileMediaStatus.initial, this.currentPage = 0, this.hasMore = true, this.errorMessage}): _media = media;
  

 final  List<PostMediaEntity> _media;
@override@JsonKey() List<PostMediaEntity> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}

@override@JsonKey() final  ProfileMediaStatus status;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override final  String? errorMessage;

/// Create a copy of ProfileMediaState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileMediaStateCopyWith<_ProfileMediaState> get copyWith => __$ProfileMediaStateCopyWithImpl<_ProfileMediaState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileMediaState&&const DeepCollectionEquality().equals(other._media, _media)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_media),status,currentPage,hasMore,errorMessage);

@override
String toString() {
  return 'ProfileMediaState(media: $media, status: $status, currentPage: $currentPage, hasMore: $hasMore, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ProfileMediaStateCopyWith<$Res> implements $ProfileMediaStateCopyWith<$Res> {
  factory _$ProfileMediaStateCopyWith(_ProfileMediaState value, $Res Function(_ProfileMediaState) _then) = __$ProfileMediaStateCopyWithImpl;
@override @useResult
$Res call({
 List<PostMediaEntity> media, ProfileMediaStatus status, int currentPage, bool hasMore, String? errorMessage
});




}
/// @nodoc
class __$ProfileMediaStateCopyWithImpl<$Res>
    implements _$ProfileMediaStateCopyWith<$Res> {
  __$ProfileMediaStateCopyWithImpl(this._self, this._then);

  final _ProfileMediaState _self;
  final $Res Function(_ProfileMediaState) _then;

/// Create a copy of ProfileMediaState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? media = null,Object? status = null,Object? currentPage = null,Object? hasMore = null,Object? errorMessage = freezed,}) {
  return _then(_ProfileMediaState(
media: null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<PostMediaEntity>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfileMediaStatus,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
