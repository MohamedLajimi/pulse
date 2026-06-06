// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_posts_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfilePostsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilePostsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfilePostsEvent()';
}


}

/// @nodoc
class $ProfilePostsEventCopyWith<$Res>  {
$ProfilePostsEventCopyWith(ProfilePostsEvent _, $Res Function(ProfilePostsEvent) __);
}


/// Adds pattern-matching-related methods to [ProfilePostsEvent].
extension ProfilePostsEventPatterns on ProfilePostsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchInitial value)?  fetchInitial,TResult Function( FetchMore value)?  fetchMore,TResult Function( RemovePost value)?  removePost,TResult Function( ReplacePost value)?  replacePost,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that);case FetchMore() when fetchMore != null:
return fetchMore(_that);case RemovePost() when removePost != null:
return removePost(_that);case ReplacePost() when replacePost != null:
return replacePost(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchInitial value)  fetchInitial,required TResult Function( FetchMore value)  fetchMore,required TResult Function( RemovePost value)  removePost,required TResult Function( ReplacePost value)  replacePost,}){
final _that = this;
switch (_that) {
case FetchInitial():
return fetchInitial(_that);case FetchMore():
return fetchMore(_that);case RemovePost():
return removePost(_that);case ReplacePost():
return replacePost(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchInitial value)?  fetchInitial,TResult? Function( FetchMore value)?  fetchMore,TResult? Function( RemovePost value)?  removePost,TResult? Function( ReplacePost value)?  replacePost,}){
final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that);case FetchMore() when fetchMore != null:
return fetchMore(_that);case RemovePost() when removePost != null:
return removePost(_that);case ReplacePost() when replacePost != null:
return replacePost(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  fetchInitial,TResult Function( String userId)?  fetchMore,TResult Function( String postId)?  removePost,TResult Function( PostEntity post)?  replacePost,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that.userId);case FetchMore() when fetchMore != null:
return fetchMore(_that.userId);case RemovePost() when removePost != null:
return removePost(_that.postId);case ReplacePost() when replacePost != null:
return replacePost(_that.post);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  fetchInitial,required TResult Function( String userId)  fetchMore,required TResult Function( String postId)  removePost,required TResult Function( PostEntity post)  replacePost,}) {final _that = this;
switch (_that) {
case FetchInitial():
return fetchInitial(_that.userId);case FetchMore():
return fetchMore(_that.userId);case RemovePost():
return removePost(_that.postId);case ReplacePost():
return replacePost(_that.post);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  fetchInitial,TResult? Function( String userId)?  fetchMore,TResult? Function( String postId)?  removePost,TResult? Function( PostEntity post)?  replacePost,}) {final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that.userId);case FetchMore() when fetchMore != null:
return fetchMore(_that.userId);case RemovePost() when removePost != null:
return removePost(_that.postId);case ReplacePost() when replacePost != null:
return replacePost(_that.post);case _:
  return null;

}
}

}

/// @nodoc


class FetchInitial implements ProfilePostsEvent {
  const FetchInitial(this.userId);
  

 final  String userId;

/// Create a copy of ProfilePostsEvent
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
  return 'ProfilePostsEvent.fetchInitial(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $FetchInitialCopyWith<$Res> implements $ProfilePostsEventCopyWith<$Res> {
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

/// Create a copy of ProfilePostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(FetchInitial(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FetchMore implements ProfilePostsEvent {
  const FetchMore(this.userId);
  

 final  String userId;

/// Create a copy of ProfilePostsEvent
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
  return 'ProfilePostsEvent.fetchMore(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $FetchMoreCopyWith<$Res> implements $ProfilePostsEventCopyWith<$Res> {
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

/// Create a copy of ProfilePostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(FetchMore(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RemovePost implements ProfilePostsEvent {
  const RemovePost(this.postId);
  

 final  String postId;

/// Create a copy of ProfilePostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemovePostCopyWith<RemovePost> get copyWith => _$RemovePostCopyWithImpl<RemovePost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemovePost&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'ProfilePostsEvent.removePost(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $RemovePostCopyWith<$Res> implements $ProfilePostsEventCopyWith<$Res> {
  factory $RemovePostCopyWith(RemovePost value, $Res Function(RemovePost) _then) = _$RemovePostCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$RemovePostCopyWithImpl<$Res>
    implements $RemovePostCopyWith<$Res> {
  _$RemovePostCopyWithImpl(this._self, this._then);

  final RemovePost _self;
  final $Res Function(RemovePost) _then;

/// Create a copy of ProfilePostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(RemovePost(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ReplacePost implements ProfilePostsEvent {
  const ReplacePost(this.post);
  

 final  PostEntity post;

/// Create a copy of ProfilePostsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReplacePostCopyWith<ReplacePost> get copyWith => _$ReplacePostCopyWithImpl<ReplacePost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReplacePost&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'ProfilePostsEvent.replacePost(post: $post)';
}


}

/// @nodoc
abstract mixin class $ReplacePostCopyWith<$Res> implements $ProfilePostsEventCopyWith<$Res> {
  factory $ReplacePostCopyWith(ReplacePost value, $Res Function(ReplacePost) _then) = _$ReplacePostCopyWithImpl;
@useResult
$Res call({
 PostEntity post
});




}
/// @nodoc
class _$ReplacePostCopyWithImpl<$Res>
    implements $ReplacePostCopyWith<$Res> {
  _$ReplacePostCopyWithImpl(this._self, this._then);

  final ReplacePost _self;
  final $Res Function(ReplacePost) _then;

/// Create a copy of ProfilePostsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(ReplacePost(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity,
  ));
}


}

/// @nodoc
mixin _$ProfilePostsState {

 List<PostEntity> get posts; ProfilePostsStatus get status; int get currentPage; bool get hasMore; String? get errorMessage;
/// Create a copy of ProfilePostsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfilePostsStateCopyWith<ProfilePostsState> get copyWith => _$ProfilePostsStateCopyWithImpl<ProfilePostsState>(this as ProfilePostsState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfilePostsState&&const DeepCollectionEquality().equals(other.posts, posts)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(posts),status,currentPage,hasMore,errorMessage);

@override
String toString() {
  return 'ProfilePostsState(posts: $posts, status: $status, currentPage: $currentPage, hasMore: $hasMore, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ProfilePostsStateCopyWith<$Res>  {
  factory $ProfilePostsStateCopyWith(ProfilePostsState value, $Res Function(ProfilePostsState) _then) = _$ProfilePostsStateCopyWithImpl;
@useResult
$Res call({
 List<PostEntity> posts, ProfilePostsStatus status, int currentPage, bool hasMore, String? errorMessage
});




}
/// @nodoc
class _$ProfilePostsStateCopyWithImpl<$Res>
    implements $ProfilePostsStateCopyWith<$Res> {
  _$ProfilePostsStateCopyWithImpl(this._self, this._then);

  final ProfilePostsState _self;
  final $Res Function(ProfilePostsState) _then;

/// Create a copy of ProfilePostsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = null,Object? status = null,Object? currentPage = null,Object? hasMore = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfilePostsStatus,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfilePostsState].
extension ProfilePostsStatePatterns on ProfilePostsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfilePostsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfilePostsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfilePostsState value)  $default,){
final _that = this;
switch (_that) {
case _ProfilePostsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfilePostsState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfilePostsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PostEntity> posts,  ProfilePostsStatus status,  int currentPage,  bool hasMore,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfilePostsState() when $default != null:
return $default(_that.posts,_that.status,_that.currentPage,_that.hasMore,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PostEntity> posts,  ProfilePostsStatus status,  int currentPage,  bool hasMore,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ProfilePostsState():
return $default(_that.posts,_that.status,_that.currentPage,_that.hasMore,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PostEntity> posts,  ProfilePostsStatus status,  int currentPage,  bool hasMore,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ProfilePostsState() when $default != null:
return $default(_that.posts,_that.status,_that.currentPage,_that.hasMore,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ProfilePostsState implements ProfilePostsState {
  const _ProfilePostsState({final  List<PostEntity> posts = const [], this.status = ProfilePostsStatus.initial, this.currentPage = 0, this.hasMore = true, this.errorMessage}): _posts = posts;
  

 final  List<PostEntity> _posts;
@override@JsonKey() List<PostEntity> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

@override@JsonKey() final  ProfilePostsStatus status;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override final  String? errorMessage;

/// Create a copy of ProfilePostsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfilePostsStateCopyWith<_ProfilePostsState> get copyWith => __$ProfilePostsStateCopyWithImpl<_ProfilePostsState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfilePostsState&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),status,currentPage,hasMore,errorMessage);

@override
String toString() {
  return 'ProfilePostsState(posts: $posts, status: $status, currentPage: $currentPage, hasMore: $hasMore, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ProfilePostsStateCopyWith<$Res> implements $ProfilePostsStateCopyWith<$Res> {
  factory _$ProfilePostsStateCopyWith(_ProfilePostsState value, $Res Function(_ProfilePostsState) _then) = __$ProfilePostsStateCopyWithImpl;
@override @useResult
$Res call({
 List<PostEntity> posts, ProfilePostsStatus status, int currentPage, bool hasMore, String? errorMessage
});




}
/// @nodoc
class __$ProfilePostsStateCopyWithImpl<$Res>
    implements _$ProfilePostsStateCopyWith<$Res> {
  __$ProfilePostsStateCopyWithImpl(this._self, this._then);

  final _ProfilePostsState _self;
  final $Res Function(_ProfilePostsState) _then;

/// Create a copy of ProfilePostsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? status = null,Object? currentPage = null,Object? hasMore = null,Object? errorMessage = freezed,}) {
  return _then(_ProfilePostsState(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as ProfilePostsStatus,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
