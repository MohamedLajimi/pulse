// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hashtag_feed_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$HashtagFeedEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HashtagFeedEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'HashtagFeedEvent()';
}


}

/// @nodoc
class $HashtagFeedEventCopyWith<$Res>  {
$HashtagFeedEventCopyWith(HashtagFeedEvent _, $Res Function(HashtagFeedEvent) __);
}


/// Adds pattern-matching-related methods to [HashtagFeedEvent].
extension HashtagFeedEventPatterns on HashtagFeedEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchInitial value)?  fetchInitial,TResult Function( FetchMore value)?  fetchMore,TResult Function( RemovePost value)?  removePost,TResult Function( EditPost value)?  editPost,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that);case FetchMore() when fetchMore != null:
return fetchMore(_that);case RemovePost() when removePost != null:
return removePost(_that);case EditPost() when editPost != null:
return editPost(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchInitial value)  fetchInitial,required TResult Function( FetchMore value)  fetchMore,required TResult Function( RemovePost value)  removePost,required TResult Function( EditPost value)  editPost,}){
final _that = this;
switch (_that) {
case FetchInitial():
return fetchInitial(_that);case FetchMore():
return fetchMore(_that);case RemovePost():
return removePost(_that);case EditPost():
return editPost(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchInitial value)?  fetchInitial,TResult? Function( FetchMore value)?  fetchMore,TResult? Function( RemovePost value)?  removePost,TResult? Function( EditPost value)?  editPost,}){
final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that);case FetchMore() when fetchMore != null:
return fetchMore(_that);case RemovePost() when removePost != null:
return removePost(_that);case EditPost() when editPost != null:
return editPost(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String hashtag)?  fetchInitial,TResult Function( String hashtag)?  fetchMore,TResult Function( String postId)?  removePost,TResult Function( PostEntity post)?  editPost,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that.hashtag);case FetchMore() when fetchMore != null:
return fetchMore(_that.hashtag);case RemovePost() when removePost != null:
return removePost(_that.postId);case EditPost() when editPost != null:
return editPost(_that.post);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String hashtag)  fetchInitial,required TResult Function( String hashtag)  fetchMore,required TResult Function( String postId)  removePost,required TResult Function( PostEntity post)  editPost,}) {final _that = this;
switch (_that) {
case FetchInitial():
return fetchInitial(_that.hashtag);case FetchMore():
return fetchMore(_that.hashtag);case RemovePost():
return removePost(_that.postId);case EditPost():
return editPost(_that.post);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String hashtag)?  fetchInitial,TResult? Function( String hashtag)?  fetchMore,TResult? Function( String postId)?  removePost,TResult? Function( PostEntity post)?  editPost,}) {final _that = this;
switch (_that) {
case FetchInitial() when fetchInitial != null:
return fetchInitial(_that.hashtag);case FetchMore() when fetchMore != null:
return fetchMore(_that.hashtag);case RemovePost() when removePost != null:
return removePost(_that.postId);case EditPost() when editPost != null:
return editPost(_that.post);case _:
  return null;

}
}

}

/// @nodoc


class FetchInitial implements HashtagFeedEvent {
  const FetchInitial(this.hashtag);
  

 final  String hashtag;

/// Create a copy of HashtagFeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchInitialCopyWith<FetchInitial> get copyWith => _$FetchInitialCopyWithImpl<FetchInitial>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchInitial&&(identical(other.hashtag, hashtag) || other.hashtag == hashtag));
}


@override
int get hashCode => Object.hash(runtimeType,hashtag);

@override
String toString() {
  return 'HashtagFeedEvent.fetchInitial(hashtag: $hashtag)';
}


}

/// @nodoc
abstract mixin class $FetchInitialCopyWith<$Res> implements $HashtagFeedEventCopyWith<$Res> {
  factory $FetchInitialCopyWith(FetchInitial value, $Res Function(FetchInitial) _then) = _$FetchInitialCopyWithImpl;
@useResult
$Res call({
 String hashtag
});




}
/// @nodoc
class _$FetchInitialCopyWithImpl<$Res>
    implements $FetchInitialCopyWith<$Res> {
  _$FetchInitialCopyWithImpl(this._self, this._then);

  final FetchInitial _self;
  final $Res Function(FetchInitial) _then;

/// Create a copy of HashtagFeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hashtag = null,}) {
  return _then(FetchInitial(
null == hashtag ? _self.hashtag : hashtag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FetchMore implements HashtagFeedEvent {
  const FetchMore(this.hashtag);
  

 final  String hashtag;

/// Create a copy of HashtagFeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchMoreCopyWith<FetchMore> get copyWith => _$FetchMoreCopyWithImpl<FetchMore>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchMore&&(identical(other.hashtag, hashtag) || other.hashtag == hashtag));
}


@override
int get hashCode => Object.hash(runtimeType,hashtag);

@override
String toString() {
  return 'HashtagFeedEvent.fetchMore(hashtag: $hashtag)';
}


}

/// @nodoc
abstract mixin class $FetchMoreCopyWith<$Res> implements $HashtagFeedEventCopyWith<$Res> {
  factory $FetchMoreCopyWith(FetchMore value, $Res Function(FetchMore) _then) = _$FetchMoreCopyWithImpl;
@useResult
$Res call({
 String hashtag
});




}
/// @nodoc
class _$FetchMoreCopyWithImpl<$Res>
    implements $FetchMoreCopyWith<$Res> {
  _$FetchMoreCopyWithImpl(this._self, this._then);

  final FetchMore _self;
  final $Res Function(FetchMore) _then;

/// Create a copy of HashtagFeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? hashtag = null,}) {
  return _then(FetchMore(
null == hashtag ? _self.hashtag : hashtag // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class RemovePost implements HashtagFeedEvent {
  const RemovePost(this.postId);
  

 final  String postId;

/// Create a copy of HashtagFeedEvent
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
  return 'HashtagFeedEvent.removePost(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $RemovePostCopyWith<$Res> implements $HashtagFeedEventCopyWith<$Res> {
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

/// Create a copy of HashtagFeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(RemovePost(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class EditPost implements HashtagFeedEvent {
  const EditPost(this.post);
  

 final  PostEntity post;

/// Create a copy of HashtagFeedEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$EditPostCopyWith<EditPost> get copyWith => _$EditPostCopyWithImpl<EditPost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditPost&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'HashtagFeedEvent.editPost(post: $post)';
}


}

/// @nodoc
abstract mixin class $EditPostCopyWith<$Res> implements $HashtagFeedEventCopyWith<$Res> {
  factory $EditPostCopyWith(EditPost value, $Res Function(EditPost) _then) = _$EditPostCopyWithImpl;
@useResult
$Res call({
 PostEntity post
});




}
/// @nodoc
class _$EditPostCopyWithImpl<$Res>
    implements $EditPostCopyWith<$Res> {
  _$EditPostCopyWithImpl(this._self, this._then);

  final EditPost _self;
  final $Res Function(EditPost) _then;

/// Create a copy of HashtagFeedEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(EditPost(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity,
  ));
}


}

/// @nodoc
mixin _$HashtagFeedState {

 List<PostEntity> get posts; HashtagFeedStatus get status; int get currentPage; bool get hasMore; String? get errorMessage;
/// Create a copy of HashtagFeedState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HashtagFeedStateCopyWith<HashtagFeedState> get copyWith => _$HashtagFeedStateCopyWithImpl<HashtagFeedState>(this as HashtagFeedState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HashtagFeedState&&const DeepCollectionEquality().equals(other.posts, posts)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(posts),status,currentPage,hasMore,errorMessage);

@override
String toString() {
  return 'HashtagFeedState(posts: $posts, status: $status, currentPage: $currentPage, hasMore: $hasMore, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $HashtagFeedStateCopyWith<$Res>  {
  factory $HashtagFeedStateCopyWith(HashtagFeedState value, $Res Function(HashtagFeedState) _then) = _$HashtagFeedStateCopyWithImpl;
@useResult
$Res call({
 List<PostEntity> posts, HashtagFeedStatus status, int currentPage, bool hasMore, String? errorMessage
});




}
/// @nodoc
class _$HashtagFeedStateCopyWithImpl<$Res>
    implements $HashtagFeedStateCopyWith<$Res> {
  _$HashtagFeedStateCopyWithImpl(this._self, this._then);

  final HashtagFeedState _self;
  final $Res Function(HashtagFeedState) _then;

/// Create a copy of HashtagFeedState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? posts = null,Object? status = null,Object? currentPage = null,Object? hasMore = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
posts: null == posts ? _self.posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HashtagFeedStatus,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [HashtagFeedState].
extension HashtagFeedStatePatterns on HashtagFeedState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HashtagFeedState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HashtagFeedState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HashtagFeedState value)  $default,){
final _that = this;
switch (_that) {
case _HashtagFeedState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HashtagFeedState value)?  $default,){
final _that = this;
switch (_that) {
case _HashtagFeedState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<PostEntity> posts,  HashtagFeedStatus status,  int currentPage,  bool hasMore,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HashtagFeedState() when $default != null:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<PostEntity> posts,  HashtagFeedStatus status,  int currentPage,  bool hasMore,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _HashtagFeedState():
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<PostEntity> posts,  HashtagFeedStatus status,  int currentPage,  bool hasMore,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _HashtagFeedState() when $default != null:
return $default(_that.posts,_that.status,_that.currentPage,_that.hasMore,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _HashtagFeedState implements HashtagFeedState {
  const _HashtagFeedState({final  List<PostEntity> posts = const [], this.status = HashtagFeedStatus.initial, this.currentPage = 0, this.hasMore = true, this.errorMessage}): _posts = posts;
  

 final  List<PostEntity> _posts;
@override@JsonKey() List<PostEntity> get posts {
  if (_posts is EqualUnmodifiableListView) return _posts;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_posts);
}

@override@JsonKey() final  HashtagFeedStatus status;
@override@JsonKey() final  int currentPage;
@override@JsonKey() final  bool hasMore;
@override final  String? errorMessage;

/// Create a copy of HashtagFeedState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HashtagFeedStateCopyWith<_HashtagFeedState> get copyWith => __$HashtagFeedStateCopyWithImpl<_HashtagFeedState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _HashtagFeedState&&const DeepCollectionEquality().equals(other._posts, _posts)&&(identical(other.status, status) || other.status == status)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_posts),status,currentPage,hasMore,errorMessage);

@override
String toString() {
  return 'HashtagFeedState(posts: $posts, status: $status, currentPage: $currentPage, hasMore: $hasMore, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$HashtagFeedStateCopyWith<$Res> implements $HashtagFeedStateCopyWith<$Res> {
  factory _$HashtagFeedStateCopyWith(_HashtagFeedState value, $Res Function(_HashtagFeedState) _then) = __$HashtagFeedStateCopyWithImpl;
@override @useResult
$Res call({
 List<PostEntity> posts, HashtagFeedStatus status, int currentPage, bool hasMore, String? errorMessage
});




}
/// @nodoc
class __$HashtagFeedStateCopyWithImpl<$Res>
    implements _$HashtagFeedStateCopyWith<$Res> {
  __$HashtagFeedStateCopyWithImpl(this._self, this._then);

  final _HashtagFeedState _self;
  final $Res Function(_HashtagFeedState) _then;

/// Create a copy of HashtagFeedState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? posts = null,Object? status = null,Object? currentPage = null,Object? hasMore = null,Object? errorMessage = freezed,}) {
  return _then(_HashtagFeedState(
posts: null == posts ? _self._posts : posts // ignore: cast_nullable_to_non_nullable
as List<PostEntity>,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as HashtagFeedStatus,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
