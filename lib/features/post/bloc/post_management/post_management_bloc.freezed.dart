// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_management_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostManagementEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostManagementEvent()';
}


}

/// @nodoc
class $PostManagementEventCopyWith<$Res>  {
$PostManagementEventCopyWith(PostManagementEvent _, $Res Function(PostManagementEvent) __);
}


/// Adds pattern-matching-related methods to [PostManagementEvent].
extension PostManagementEventPatterns on PostManagementEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( GetPostById value)?  getPostById,TResult Function( UploadMedia value)?  uploadMedia,TResult Function( CreatePost value)?  createPost,TResult Function( UpdatePost value)?  updatePost,TResult Function( DeletePost value)?  deletePost,TResult Function( GetMentionSuggestions value)?  getMentionSuggestions,required TResult orElse(),}){
final _that = this;
switch (_that) {
case GetPostById() when getPostById != null:
return getPostById(_that);case UploadMedia() when uploadMedia != null:
return uploadMedia(_that);case CreatePost() when createPost != null:
return createPost(_that);case UpdatePost() when updatePost != null:
return updatePost(_that);case DeletePost() when deletePost != null:
return deletePost(_that);case GetMentionSuggestions() when getMentionSuggestions != null:
return getMentionSuggestions(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( GetPostById value)  getPostById,required TResult Function( UploadMedia value)  uploadMedia,required TResult Function( CreatePost value)  createPost,required TResult Function( UpdatePost value)  updatePost,required TResult Function( DeletePost value)  deletePost,required TResult Function( GetMentionSuggestions value)  getMentionSuggestions,}){
final _that = this;
switch (_that) {
case GetPostById():
return getPostById(_that);case UploadMedia():
return uploadMedia(_that);case CreatePost():
return createPost(_that);case UpdatePost():
return updatePost(_that);case DeletePost():
return deletePost(_that);case GetMentionSuggestions():
return getMentionSuggestions(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( GetPostById value)?  getPostById,TResult? Function( UploadMedia value)?  uploadMedia,TResult? Function( CreatePost value)?  createPost,TResult? Function( UpdatePost value)?  updatePost,TResult? Function( DeletePost value)?  deletePost,TResult? Function( GetMentionSuggestions value)?  getMentionSuggestions,}){
final _that = this;
switch (_that) {
case GetPostById() when getPostById != null:
return getPostById(_that);case UploadMedia() when uploadMedia != null:
return uploadMedia(_that);case CreatePost() when createPost != null:
return createPost(_that);case UpdatePost() when updatePost != null:
return updatePost(_that);case DeletePost() when deletePost != null:
return deletePost(_that);case GetMentionSuggestions() when getMentionSuggestions != null:
return getMentionSuggestions(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String postId)?  getPostById,TResult Function( String postId,  List<MediaUploadJob> jobs)?  uploadMedia,TResult Function( String id,  String userId,  String? caption,  String? location,  List<PostMediaEntity> media,  List<String> mentions,  List<String> hashtags)?  createPost,TResult Function( String id,  String? caption,  String? location,  List<PostMediaEntity> mediaToInsert,  List<String> mediaIdsToDelete,  List<PostMediaEntity> mediaToUpdateSortOrder,  List<String> mentionsToInsert,  List<String> mentionsToDelete,  List<String> hashtagsToInsert,  List<String> hashtagsToDelete)?  updatePost,TResult Function( String id)?  deletePost,TResult Function( String query)?  getMentionSuggestions,required TResult orElse(),}) {final _that = this;
switch (_that) {
case GetPostById() when getPostById != null:
return getPostById(_that.postId);case UploadMedia() when uploadMedia != null:
return uploadMedia(_that.postId,_that.jobs);case CreatePost() when createPost != null:
return createPost(_that.id,_that.userId,_that.caption,_that.location,_that.media,_that.mentions,_that.hashtags);case UpdatePost() when updatePost != null:
return updatePost(_that.id,_that.caption,_that.location,_that.mediaToInsert,_that.mediaIdsToDelete,_that.mediaToUpdateSortOrder,_that.mentionsToInsert,_that.mentionsToDelete,_that.hashtagsToInsert,_that.hashtagsToDelete);case DeletePost() when deletePost != null:
return deletePost(_that.id);case GetMentionSuggestions() when getMentionSuggestions != null:
return getMentionSuggestions(_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String postId)  getPostById,required TResult Function( String postId,  List<MediaUploadJob> jobs)  uploadMedia,required TResult Function( String id,  String userId,  String? caption,  String? location,  List<PostMediaEntity> media,  List<String> mentions,  List<String> hashtags)  createPost,required TResult Function( String id,  String? caption,  String? location,  List<PostMediaEntity> mediaToInsert,  List<String> mediaIdsToDelete,  List<PostMediaEntity> mediaToUpdateSortOrder,  List<String> mentionsToInsert,  List<String> mentionsToDelete,  List<String> hashtagsToInsert,  List<String> hashtagsToDelete)  updatePost,required TResult Function( String id)  deletePost,required TResult Function( String query)  getMentionSuggestions,}) {final _that = this;
switch (_that) {
case GetPostById():
return getPostById(_that.postId);case UploadMedia():
return uploadMedia(_that.postId,_that.jobs);case CreatePost():
return createPost(_that.id,_that.userId,_that.caption,_that.location,_that.media,_that.mentions,_that.hashtags);case UpdatePost():
return updatePost(_that.id,_that.caption,_that.location,_that.mediaToInsert,_that.mediaIdsToDelete,_that.mediaToUpdateSortOrder,_that.mentionsToInsert,_that.mentionsToDelete,_that.hashtagsToInsert,_that.hashtagsToDelete);case DeletePost():
return deletePost(_that.id);case GetMentionSuggestions():
return getMentionSuggestions(_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String postId)?  getPostById,TResult? Function( String postId,  List<MediaUploadJob> jobs)?  uploadMedia,TResult? Function( String id,  String userId,  String? caption,  String? location,  List<PostMediaEntity> media,  List<String> mentions,  List<String> hashtags)?  createPost,TResult? Function( String id,  String? caption,  String? location,  List<PostMediaEntity> mediaToInsert,  List<String> mediaIdsToDelete,  List<PostMediaEntity> mediaToUpdateSortOrder,  List<String> mentionsToInsert,  List<String> mentionsToDelete,  List<String> hashtagsToInsert,  List<String> hashtagsToDelete)?  updatePost,TResult? Function( String id)?  deletePost,TResult? Function( String query)?  getMentionSuggestions,}) {final _that = this;
switch (_that) {
case GetPostById() when getPostById != null:
return getPostById(_that.postId);case UploadMedia() when uploadMedia != null:
return uploadMedia(_that.postId,_that.jobs);case CreatePost() when createPost != null:
return createPost(_that.id,_that.userId,_that.caption,_that.location,_that.media,_that.mentions,_that.hashtags);case UpdatePost() when updatePost != null:
return updatePost(_that.id,_that.caption,_that.location,_that.mediaToInsert,_that.mediaIdsToDelete,_that.mediaToUpdateSortOrder,_that.mentionsToInsert,_that.mentionsToDelete,_that.hashtagsToInsert,_that.hashtagsToDelete);case DeletePost() when deletePost != null:
return deletePost(_that.id);case GetMentionSuggestions() when getMentionSuggestions != null:
return getMentionSuggestions(_that.query);case _:
  return null;

}
}

}

/// @nodoc


class GetPostById implements PostManagementEvent {
  const GetPostById(this.postId);
  

 final  String postId;

/// Create a copy of PostManagementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetPostByIdCopyWith<GetPostById> get copyWith => _$GetPostByIdCopyWithImpl<GetPostById>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetPostById&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostManagementEvent.getPostById(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $GetPostByIdCopyWith<$Res> implements $PostManagementEventCopyWith<$Res> {
  factory $GetPostByIdCopyWith(GetPostById value, $Res Function(GetPostById) _then) = _$GetPostByIdCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$GetPostByIdCopyWithImpl<$Res>
    implements $GetPostByIdCopyWith<$Res> {
  _$GetPostByIdCopyWithImpl(this._self, this._then);

  final GetPostById _self;
  final $Res Function(GetPostById) _then;

/// Create a copy of PostManagementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(GetPostById(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UploadMedia implements PostManagementEvent {
  const UploadMedia({required this.postId, required final  List<MediaUploadJob> jobs}): _jobs = jobs;
  

 final  String postId;
 final  List<MediaUploadJob> _jobs;
 List<MediaUploadJob> get jobs {
  if (_jobs is EqualUnmodifiableListView) return _jobs;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_jobs);
}


/// Create a copy of PostManagementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UploadMediaCopyWith<UploadMedia> get copyWith => _$UploadMediaCopyWithImpl<UploadMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UploadMedia&&(identical(other.postId, postId) || other.postId == postId)&&const DeepCollectionEquality().equals(other._jobs, _jobs));
}


@override
int get hashCode => Object.hash(runtimeType,postId,const DeepCollectionEquality().hash(_jobs));

@override
String toString() {
  return 'PostManagementEvent.uploadMedia(postId: $postId, jobs: $jobs)';
}


}

/// @nodoc
abstract mixin class $UploadMediaCopyWith<$Res> implements $PostManagementEventCopyWith<$Res> {
  factory $UploadMediaCopyWith(UploadMedia value, $Res Function(UploadMedia) _then) = _$UploadMediaCopyWithImpl;
@useResult
$Res call({
 String postId, List<MediaUploadJob> jobs
});




}
/// @nodoc
class _$UploadMediaCopyWithImpl<$Res>
    implements $UploadMediaCopyWith<$Res> {
  _$UploadMediaCopyWithImpl(this._self, this._then);

  final UploadMedia _self;
  final $Res Function(UploadMedia) _then;

/// Create a copy of PostManagementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? jobs = null,}) {
  return _then(UploadMedia(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,jobs: null == jobs ? _self._jobs : jobs // ignore: cast_nullable_to_non_nullable
as List<MediaUploadJob>,
  ));
}


}

/// @nodoc


class CreatePost implements PostManagementEvent {
  const CreatePost({required this.id, required this.userId, this.caption, this.location, required final  List<PostMediaEntity> media, required final  List<String> mentions, required final  List<String> hashtags}): _media = media,_mentions = mentions,_hashtags = hashtags;
  

 final  String id;
 final  String userId;
 final  String? caption;
 final  String? location;
 final  List<PostMediaEntity> _media;
 List<PostMediaEntity> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}

 final  List<String> _mentions;
 List<String> get mentions {
  if (_mentions is EqualUnmodifiableListView) return _mentions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentions);
}

 final  List<String> _hashtags;
 List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}


/// Create a copy of PostManagementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreatePostCopyWith<CreatePost> get copyWith => _$CreatePostCopyWithImpl<CreatePost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreatePost&&(identical(other.id, id) || other.id == id)&&(identical(other.userId, userId) || other.userId == userId)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._media, _media)&&const DeepCollectionEquality().equals(other._mentions, _mentions)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags));
}


@override
int get hashCode => Object.hash(runtimeType,id,userId,caption,location,const DeepCollectionEquality().hash(_media),const DeepCollectionEquality().hash(_mentions),const DeepCollectionEquality().hash(_hashtags));

@override
String toString() {
  return 'PostManagementEvent.createPost(id: $id, userId: $userId, caption: $caption, location: $location, media: $media, mentions: $mentions, hashtags: $hashtags)';
}


}

/// @nodoc
abstract mixin class $CreatePostCopyWith<$Res> implements $PostManagementEventCopyWith<$Res> {
  factory $CreatePostCopyWith(CreatePost value, $Res Function(CreatePost) _then) = _$CreatePostCopyWithImpl;
@useResult
$Res call({
 String id, String userId, String? caption, String? location, List<PostMediaEntity> media, List<String> mentions, List<String> hashtags
});




}
/// @nodoc
class _$CreatePostCopyWithImpl<$Res>
    implements $CreatePostCopyWith<$Res> {
  _$CreatePostCopyWithImpl(this._self, this._then);

  final CreatePost _self;
  final $Res Function(CreatePost) _then;

/// Create a copy of PostManagementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? userId = null,Object? caption = freezed,Object? location = freezed,Object? media = null,Object? mentions = null,Object? hashtags = null,}) {
  return _then(CreatePost(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,userId: null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,media: null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<PostMediaEntity>,mentions: null == mentions ? _self._mentions : mentions // ignore: cast_nullable_to_non_nullable
as List<String>,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class UpdatePost implements PostManagementEvent {
  const UpdatePost({required this.id, this.caption, this.location, required final  List<PostMediaEntity> mediaToInsert, required final  List<String> mediaIdsToDelete, required final  List<PostMediaEntity> mediaToUpdateSortOrder, required final  List<String> mentionsToInsert, required final  List<String> mentionsToDelete, required final  List<String> hashtagsToInsert, required final  List<String> hashtagsToDelete}): _mediaToInsert = mediaToInsert,_mediaIdsToDelete = mediaIdsToDelete,_mediaToUpdateSortOrder = mediaToUpdateSortOrder,_mentionsToInsert = mentionsToInsert,_mentionsToDelete = mentionsToDelete,_hashtagsToInsert = hashtagsToInsert,_hashtagsToDelete = hashtagsToDelete;
  

 final  String id;
 final  String? caption;
 final  String? location;
 final  List<PostMediaEntity> _mediaToInsert;
 List<PostMediaEntity> get mediaToInsert {
  if (_mediaToInsert is EqualUnmodifiableListView) return _mediaToInsert;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mediaToInsert);
}

 final  List<String> _mediaIdsToDelete;
 List<String> get mediaIdsToDelete {
  if (_mediaIdsToDelete is EqualUnmodifiableListView) return _mediaIdsToDelete;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mediaIdsToDelete);
}

 final  List<PostMediaEntity> _mediaToUpdateSortOrder;
 List<PostMediaEntity> get mediaToUpdateSortOrder {
  if (_mediaToUpdateSortOrder is EqualUnmodifiableListView) return _mediaToUpdateSortOrder;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mediaToUpdateSortOrder);
}

 final  List<String> _mentionsToInsert;
 List<String> get mentionsToInsert {
  if (_mentionsToInsert is EqualUnmodifiableListView) return _mentionsToInsert;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentionsToInsert);
}

 final  List<String> _mentionsToDelete;
 List<String> get mentionsToDelete {
  if (_mentionsToDelete is EqualUnmodifiableListView) return _mentionsToDelete;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentionsToDelete);
}

 final  List<String> _hashtagsToInsert;
 List<String> get hashtagsToInsert {
  if (_hashtagsToInsert is EqualUnmodifiableListView) return _hashtagsToInsert;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtagsToInsert);
}

 final  List<String> _hashtagsToDelete;
 List<String> get hashtagsToDelete {
  if (_hashtagsToDelete is EqualUnmodifiableListView) return _hashtagsToDelete;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtagsToDelete);
}


/// Create a copy of PostManagementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdatePostCopyWith<UpdatePost> get copyWith => _$UpdatePostCopyWithImpl<UpdatePost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdatePost&&(identical(other.id, id) || other.id == id)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._mediaToInsert, _mediaToInsert)&&const DeepCollectionEquality().equals(other._mediaIdsToDelete, _mediaIdsToDelete)&&const DeepCollectionEquality().equals(other._mediaToUpdateSortOrder, _mediaToUpdateSortOrder)&&const DeepCollectionEquality().equals(other._mentionsToInsert, _mentionsToInsert)&&const DeepCollectionEquality().equals(other._mentionsToDelete, _mentionsToDelete)&&const DeepCollectionEquality().equals(other._hashtagsToInsert, _hashtagsToInsert)&&const DeepCollectionEquality().equals(other._hashtagsToDelete, _hashtagsToDelete));
}


@override
int get hashCode => Object.hash(runtimeType,id,caption,location,const DeepCollectionEquality().hash(_mediaToInsert),const DeepCollectionEquality().hash(_mediaIdsToDelete),const DeepCollectionEquality().hash(_mediaToUpdateSortOrder),const DeepCollectionEquality().hash(_mentionsToInsert),const DeepCollectionEquality().hash(_mentionsToDelete),const DeepCollectionEquality().hash(_hashtagsToInsert),const DeepCollectionEquality().hash(_hashtagsToDelete));

@override
String toString() {
  return 'PostManagementEvent.updatePost(id: $id, caption: $caption, location: $location, mediaToInsert: $mediaToInsert, mediaIdsToDelete: $mediaIdsToDelete, mediaToUpdateSortOrder: $mediaToUpdateSortOrder, mentionsToInsert: $mentionsToInsert, mentionsToDelete: $mentionsToDelete, hashtagsToInsert: $hashtagsToInsert, hashtagsToDelete: $hashtagsToDelete)';
}


}

/// @nodoc
abstract mixin class $UpdatePostCopyWith<$Res> implements $PostManagementEventCopyWith<$Res> {
  factory $UpdatePostCopyWith(UpdatePost value, $Res Function(UpdatePost) _then) = _$UpdatePostCopyWithImpl;
@useResult
$Res call({
 String id, String? caption, String? location, List<PostMediaEntity> mediaToInsert, List<String> mediaIdsToDelete, List<PostMediaEntity> mediaToUpdateSortOrder, List<String> mentionsToInsert, List<String> mentionsToDelete, List<String> hashtagsToInsert, List<String> hashtagsToDelete
});




}
/// @nodoc
class _$UpdatePostCopyWithImpl<$Res>
    implements $UpdatePostCopyWith<$Res> {
  _$UpdatePostCopyWithImpl(this._self, this._then);

  final UpdatePost _self;
  final $Res Function(UpdatePost) _then;

/// Create a copy of PostManagementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,Object? caption = freezed,Object? location = freezed,Object? mediaToInsert = null,Object? mediaIdsToDelete = null,Object? mediaToUpdateSortOrder = null,Object? mentionsToInsert = null,Object? mentionsToDelete = null,Object? hashtagsToInsert = null,Object? hashtagsToDelete = null,}) {
  return _then(UpdatePost(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,caption: freezed == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String?,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,mediaToInsert: null == mediaToInsert ? _self._mediaToInsert : mediaToInsert // ignore: cast_nullable_to_non_nullable
as List<PostMediaEntity>,mediaIdsToDelete: null == mediaIdsToDelete ? _self._mediaIdsToDelete : mediaIdsToDelete // ignore: cast_nullable_to_non_nullable
as List<String>,mediaToUpdateSortOrder: null == mediaToUpdateSortOrder ? _self._mediaToUpdateSortOrder : mediaToUpdateSortOrder // ignore: cast_nullable_to_non_nullable
as List<PostMediaEntity>,mentionsToInsert: null == mentionsToInsert ? _self._mentionsToInsert : mentionsToInsert // ignore: cast_nullable_to_non_nullable
as List<String>,mentionsToDelete: null == mentionsToDelete ? _self._mentionsToDelete : mentionsToDelete // ignore: cast_nullable_to_non_nullable
as List<String>,hashtagsToInsert: null == hashtagsToInsert ? _self._hashtagsToInsert : hashtagsToInsert // ignore: cast_nullable_to_non_nullable
as List<String>,hashtagsToDelete: null == hashtagsToDelete ? _self._hashtagsToDelete : hashtagsToDelete // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class DeletePost implements PostManagementEvent {
  const DeletePost(this.id);
  

 final  String id;

/// Create a copy of PostManagementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeletePostCopyWith<DeletePost> get copyWith => _$DeletePostCopyWithImpl<DeletePost>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeletePost&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PostManagementEvent.deletePost(id: $id)';
}


}

/// @nodoc
abstract mixin class $DeletePostCopyWith<$Res> implements $PostManagementEventCopyWith<$Res> {
  factory $DeletePostCopyWith(DeletePost value, $Res Function(DeletePost) _then) = _$DeletePostCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$DeletePostCopyWithImpl<$Res>
    implements $DeletePostCopyWith<$Res> {
  _$DeletePostCopyWithImpl(this._self, this._then);

  final DeletePost _self;
  final $Res Function(DeletePost) _then;

/// Create a copy of PostManagementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(DeletePost(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class GetMentionSuggestions implements PostManagementEvent {
  const GetMentionSuggestions(this.query);
  

 final  String query;

/// Create a copy of PostManagementEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetMentionSuggestionsCopyWith<GetMentionSuggestions> get copyWith => _$GetMentionSuggestionsCopyWithImpl<GetMentionSuggestions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetMentionSuggestions&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'PostManagementEvent.getMentionSuggestions(query: $query)';
}


}

/// @nodoc
abstract mixin class $GetMentionSuggestionsCopyWith<$Res> implements $PostManagementEventCopyWith<$Res> {
  factory $GetMentionSuggestionsCopyWith(GetMentionSuggestions value, $Res Function(GetMentionSuggestions) _then) = _$GetMentionSuggestionsCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$GetMentionSuggestionsCopyWithImpl<$Res>
    implements $GetMentionSuggestionsCopyWith<$Res> {
  _$GetMentionSuggestionsCopyWithImpl(this._self, this._then);

  final GetMentionSuggestions _self;
  final $Res Function(GetMentionSuggestions) _then;

/// Create a copy of PostManagementEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(GetMentionSuggestions(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$PostManagementState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostManagementState()';
}


}

/// @nodoc
class $PostManagementStateCopyWith<$Res>  {
$PostManagementStateCopyWith(PostManagementState _, $Res Function(PostManagementState) __);
}


/// Adds pattern-matching-related methods to [PostManagementState].
extension PostManagementStatePatterns on PostManagementState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PostManagementInitial value)?  initial,TResult Function( PostManagementUploading value)?  uploading,TResult Function( PostManagementSubmitting value)?  submitting,TResult Function( PostManagementDeleting value)?  deleting,TResult Function( PostManagementFetchingSuggestions value)?  fetchingSuggestions,TResult Function( PostManagementFetchingPostFormData value)?  fetchingPostFormData,TResult Function( PostManagementUploadSuccess value)?  uploadSuccess,TResult Function( PostManagementOperationSuccess value)?  operationSuccess,TResult Function( PostManagementDeleteSuccess value)?  deleteSuccess,TResult Function( PostManagementSuggestions value)?  suggestionResults,TResult Function( PostManagementPostFormDataSuccess value)?  postFormDataSuccess,TResult Function( PostManagementFetchPostByIdError value)?  fetchPostByIdError,TResult Function( PostManagementError value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PostManagementInitial() when initial != null:
return initial(_that);case PostManagementUploading() when uploading != null:
return uploading(_that);case PostManagementSubmitting() when submitting != null:
return submitting(_that);case PostManagementDeleting() when deleting != null:
return deleting(_that);case PostManagementFetchingSuggestions() when fetchingSuggestions != null:
return fetchingSuggestions(_that);case PostManagementFetchingPostFormData() when fetchingPostFormData != null:
return fetchingPostFormData(_that);case PostManagementUploadSuccess() when uploadSuccess != null:
return uploadSuccess(_that);case PostManagementOperationSuccess() when operationSuccess != null:
return operationSuccess(_that);case PostManagementDeleteSuccess() when deleteSuccess != null:
return deleteSuccess(_that);case PostManagementSuggestions() when suggestionResults != null:
return suggestionResults(_that);case PostManagementPostFormDataSuccess() when postFormDataSuccess != null:
return postFormDataSuccess(_that);case PostManagementFetchPostByIdError() when fetchPostByIdError != null:
return fetchPostByIdError(_that);case PostManagementError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PostManagementInitial value)  initial,required TResult Function( PostManagementUploading value)  uploading,required TResult Function( PostManagementSubmitting value)  submitting,required TResult Function( PostManagementDeleting value)  deleting,required TResult Function( PostManagementFetchingSuggestions value)  fetchingSuggestions,required TResult Function( PostManagementFetchingPostFormData value)  fetchingPostFormData,required TResult Function( PostManagementUploadSuccess value)  uploadSuccess,required TResult Function( PostManagementOperationSuccess value)  operationSuccess,required TResult Function( PostManagementDeleteSuccess value)  deleteSuccess,required TResult Function( PostManagementSuggestions value)  suggestionResults,required TResult Function( PostManagementPostFormDataSuccess value)  postFormDataSuccess,required TResult Function( PostManagementFetchPostByIdError value)  fetchPostByIdError,required TResult Function( PostManagementError value)  error,}){
final _that = this;
switch (_that) {
case PostManagementInitial():
return initial(_that);case PostManagementUploading():
return uploading(_that);case PostManagementSubmitting():
return submitting(_that);case PostManagementDeleting():
return deleting(_that);case PostManagementFetchingSuggestions():
return fetchingSuggestions(_that);case PostManagementFetchingPostFormData():
return fetchingPostFormData(_that);case PostManagementUploadSuccess():
return uploadSuccess(_that);case PostManagementOperationSuccess():
return operationSuccess(_that);case PostManagementDeleteSuccess():
return deleteSuccess(_that);case PostManagementSuggestions():
return suggestionResults(_that);case PostManagementPostFormDataSuccess():
return postFormDataSuccess(_that);case PostManagementFetchPostByIdError():
return fetchPostByIdError(_that);case PostManagementError():
return error(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PostManagementInitial value)?  initial,TResult? Function( PostManagementUploading value)?  uploading,TResult? Function( PostManagementSubmitting value)?  submitting,TResult? Function( PostManagementDeleting value)?  deleting,TResult? Function( PostManagementFetchingSuggestions value)?  fetchingSuggestions,TResult? Function( PostManagementFetchingPostFormData value)?  fetchingPostFormData,TResult? Function( PostManagementUploadSuccess value)?  uploadSuccess,TResult? Function( PostManagementOperationSuccess value)?  operationSuccess,TResult? Function( PostManagementDeleteSuccess value)?  deleteSuccess,TResult? Function( PostManagementSuggestions value)?  suggestionResults,TResult? Function( PostManagementPostFormDataSuccess value)?  postFormDataSuccess,TResult? Function( PostManagementFetchPostByIdError value)?  fetchPostByIdError,TResult? Function( PostManagementError value)?  error,}){
final _that = this;
switch (_that) {
case PostManagementInitial() when initial != null:
return initial(_that);case PostManagementUploading() when uploading != null:
return uploading(_that);case PostManagementSubmitting() when submitting != null:
return submitting(_that);case PostManagementDeleting() when deleting != null:
return deleting(_that);case PostManagementFetchingSuggestions() when fetchingSuggestions != null:
return fetchingSuggestions(_that);case PostManagementFetchingPostFormData() when fetchingPostFormData != null:
return fetchingPostFormData(_that);case PostManagementUploadSuccess() when uploadSuccess != null:
return uploadSuccess(_that);case PostManagementOperationSuccess() when operationSuccess != null:
return operationSuccess(_that);case PostManagementDeleteSuccess() when deleteSuccess != null:
return deleteSuccess(_that);case PostManagementSuggestions() when suggestionResults != null:
return suggestionResults(_that);case PostManagementPostFormDataSuccess() when postFormDataSuccess != null:
return postFormDataSuccess(_that);case PostManagementFetchPostByIdError() when fetchPostByIdError != null:
return fetchPostByIdError(_that);case PostManagementError() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  uploading,TResult Function()?  submitting,TResult Function()?  deleting,TResult Function()?  fetchingSuggestions,TResult Function()?  fetchingPostFormData,TResult Function( List<MediaUploadResult> results)?  uploadSuccess,TResult Function( PostEntity post)?  operationSuccess,TResult Function( String postId)?  deleteSuccess,TResult Function( List<ProfileEntity> suggestions)?  suggestionResults,TResult Function( PostEntity post)?  postFormDataSuccess,TResult Function( String message)?  fetchPostByIdError,TResult Function( String message,  List<String> failedMediaIds)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PostManagementInitial() when initial != null:
return initial();case PostManagementUploading() when uploading != null:
return uploading();case PostManagementSubmitting() when submitting != null:
return submitting();case PostManagementDeleting() when deleting != null:
return deleting();case PostManagementFetchingSuggestions() when fetchingSuggestions != null:
return fetchingSuggestions();case PostManagementFetchingPostFormData() when fetchingPostFormData != null:
return fetchingPostFormData();case PostManagementUploadSuccess() when uploadSuccess != null:
return uploadSuccess(_that.results);case PostManagementOperationSuccess() when operationSuccess != null:
return operationSuccess(_that.post);case PostManagementDeleteSuccess() when deleteSuccess != null:
return deleteSuccess(_that.postId);case PostManagementSuggestions() when suggestionResults != null:
return suggestionResults(_that.suggestions);case PostManagementPostFormDataSuccess() when postFormDataSuccess != null:
return postFormDataSuccess(_that.post);case PostManagementFetchPostByIdError() when fetchPostByIdError != null:
return fetchPostByIdError(_that.message);case PostManagementError() when error != null:
return error(_that.message,_that.failedMediaIds);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  uploading,required TResult Function()  submitting,required TResult Function()  deleting,required TResult Function()  fetchingSuggestions,required TResult Function()  fetchingPostFormData,required TResult Function( List<MediaUploadResult> results)  uploadSuccess,required TResult Function( PostEntity post)  operationSuccess,required TResult Function( String postId)  deleteSuccess,required TResult Function( List<ProfileEntity> suggestions)  suggestionResults,required TResult Function( PostEntity post)  postFormDataSuccess,required TResult Function( String message)  fetchPostByIdError,required TResult Function( String message,  List<String> failedMediaIds)  error,}) {final _that = this;
switch (_that) {
case PostManagementInitial():
return initial();case PostManagementUploading():
return uploading();case PostManagementSubmitting():
return submitting();case PostManagementDeleting():
return deleting();case PostManagementFetchingSuggestions():
return fetchingSuggestions();case PostManagementFetchingPostFormData():
return fetchingPostFormData();case PostManagementUploadSuccess():
return uploadSuccess(_that.results);case PostManagementOperationSuccess():
return operationSuccess(_that.post);case PostManagementDeleteSuccess():
return deleteSuccess(_that.postId);case PostManagementSuggestions():
return suggestionResults(_that.suggestions);case PostManagementPostFormDataSuccess():
return postFormDataSuccess(_that.post);case PostManagementFetchPostByIdError():
return fetchPostByIdError(_that.message);case PostManagementError():
return error(_that.message,_that.failedMediaIds);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  uploading,TResult? Function()?  submitting,TResult? Function()?  deleting,TResult? Function()?  fetchingSuggestions,TResult? Function()?  fetchingPostFormData,TResult? Function( List<MediaUploadResult> results)?  uploadSuccess,TResult? Function( PostEntity post)?  operationSuccess,TResult? Function( String postId)?  deleteSuccess,TResult? Function( List<ProfileEntity> suggestions)?  suggestionResults,TResult? Function( PostEntity post)?  postFormDataSuccess,TResult? Function( String message)?  fetchPostByIdError,TResult? Function( String message,  List<String> failedMediaIds)?  error,}) {final _that = this;
switch (_that) {
case PostManagementInitial() when initial != null:
return initial();case PostManagementUploading() when uploading != null:
return uploading();case PostManagementSubmitting() when submitting != null:
return submitting();case PostManagementDeleting() when deleting != null:
return deleting();case PostManagementFetchingSuggestions() when fetchingSuggestions != null:
return fetchingSuggestions();case PostManagementFetchingPostFormData() when fetchingPostFormData != null:
return fetchingPostFormData();case PostManagementUploadSuccess() when uploadSuccess != null:
return uploadSuccess(_that.results);case PostManagementOperationSuccess() when operationSuccess != null:
return operationSuccess(_that.post);case PostManagementDeleteSuccess() when deleteSuccess != null:
return deleteSuccess(_that.postId);case PostManagementSuggestions() when suggestionResults != null:
return suggestionResults(_that.suggestions);case PostManagementPostFormDataSuccess() when postFormDataSuccess != null:
return postFormDataSuccess(_that.post);case PostManagementFetchPostByIdError() when fetchPostByIdError != null:
return fetchPostByIdError(_that.message);case PostManagementError() when error != null:
return error(_that.message,_that.failedMediaIds);case _:
  return null;

}
}

}

/// @nodoc


class PostManagementInitial implements PostManagementState {
  const PostManagementInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostManagementState.initial()';
}


}




/// @nodoc


class PostManagementUploading implements PostManagementState {
  const PostManagementUploading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementUploading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostManagementState.uploading()';
}


}




/// @nodoc


class PostManagementSubmitting implements PostManagementState {
  const PostManagementSubmitting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementSubmitting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostManagementState.submitting()';
}


}




/// @nodoc


class PostManagementDeleting implements PostManagementState {
  const PostManagementDeleting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementDeleting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostManagementState.deleting()';
}


}




/// @nodoc


class PostManagementFetchingSuggestions implements PostManagementState {
  const PostManagementFetchingSuggestions();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementFetchingSuggestions);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostManagementState.fetchingSuggestions()';
}


}




/// @nodoc


class PostManagementFetchingPostFormData implements PostManagementState {
  const PostManagementFetchingPostFormData();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementFetchingPostFormData);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostManagementState.fetchingPostFormData()';
}


}




/// @nodoc


class PostManagementUploadSuccess implements PostManagementState {
  const PostManagementUploadSuccess(final  List<MediaUploadResult> results): _results = results;
  

 final  List<MediaUploadResult> _results;
 List<MediaUploadResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostManagementUploadSuccessCopyWith<PostManagementUploadSuccess> get copyWith => _$PostManagementUploadSuccessCopyWithImpl<PostManagementUploadSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementUploadSuccess&&const DeepCollectionEquality().equals(other._results, _results));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PostManagementState.uploadSuccess(results: $results)';
}


}

/// @nodoc
abstract mixin class $PostManagementUploadSuccessCopyWith<$Res> implements $PostManagementStateCopyWith<$Res> {
  factory $PostManagementUploadSuccessCopyWith(PostManagementUploadSuccess value, $Res Function(PostManagementUploadSuccess) _then) = _$PostManagementUploadSuccessCopyWithImpl;
@useResult
$Res call({
 List<MediaUploadResult> results
});




}
/// @nodoc
class _$PostManagementUploadSuccessCopyWithImpl<$Res>
    implements $PostManagementUploadSuccessCopyWith<$Res> {
  _$PostManagementUploadSuccessCopyWithImpl(this._self, this._then);

  final PostManagementUploadSuccess _self;
  final $Res Function(PostManagementUploadSuccess) _then;

/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(PostManagementUploadSuccess(
null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<MediaUploadResult>,
  ));
}


}

/// @nodoc


class PostManagementOperationSuccess implements PostManagementState {
  const PostManagementOperationSuccess(this.post);
  

 final  PostEntity post;

/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostManagementOperationSuccessCopyWith<PostManagementOperationSuccess> get copyWith => _$PostManagementOperationSuccessCopyWithImpl<PostManagementOperationSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementOperationSuccess&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'PostManagementState.operationSuccess(post: $post)';
}


}

/// @nodoc
abstract mixin class $PostManagementOperationSuccessCopyWith<$Res> implements $PostManagementStateCopyWith<$Res> {
  factory $PostManagementOperationSuccessCopyWith(PostManagementOperationSuccess value, $Res Function(PostManagementOperationSuccess) _then) = _$PostManagementOperationSuccessCopyWithImpl;
@useResult
$Res call({
 PostEntity post
});




}
/// @nodoc
class _$PostManagementOperationSuccessCopyWithImpl<$Res>
    implements $PostManagementOperationSuccessCopyWith<$Res> {
  _$PostManagementOperationSuccessCopyWithImpl(this._self, this._then);

  final PostManagementOperationSuccess _self;
  final $Res Function(PostManagementOperationSuccess) _then;

/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(PostManagementOperationSuccess(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity,
  ));
}


}

/// @nodoc


class PostManagementDeleteSuccess implements PostManagementState {
  const PostManagementDeleteSuccess(this.postId);
  

 final  String postId;

/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostManagementDeleteSuccessCopyWith<PostManagementDeleteSuccess> get copyWith => _$PostManagementDeleteSuccessCopyWithImpl<PostManagementDeleteSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementDeleteSuccess&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'PostManagementState.deleteSuccess(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $PostManagementDeleteSuccessCopyWith<$Res> implements $PostManagementStateCopyWith<$Res> {
  factory $PostManagementDeleteSuccessCopyWith(PostManagementDeleteSuccess value, $Res Function(PostManagementDeleteSuccess) _then) = _$PostManagementDeleteSuccessCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$PostManagementDeleteSuccessCopyWithImpl<$Res>
    implements $PostManagementDeleteSuccessCopyWith<$Res> {
  _$PostManagementDeleteSuccessCopyWithImpl(this._self, this._then);

  final PostManagementDeleteSuccess _self;
  final $Res Function(PostManagementDeleteSuccess) _then;

/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(PostManagementDeleteSuccess(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PostManagementSuggestions implements PostManagementState {
  const PostManagementSuggestions(final  List<ProfileEntity> suggestions): _suggestions = suggestions;
  

 final  List<ProfileEntity> _suggestions;
 List<ProfileEntity> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}


/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostManagementSuggestionsCopyWith<PostManagementSuggestions> get copyWith => _$PostManagementSuggestionsCopyWithImpl<PostManagementSuggestions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementSuggestions&&const DeepCollectionEquality().equals(other._suggestions, _suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestions));

@override
String toString() {
  return 'PostManagementState.suggestionResults(suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class $PostManagementSuggestionsCopyWith<$Res> implements $PostManagementStateCopyWith<$Res> {
  factory $PostManagementSuggestionsCopyWith(PostManagementSuggestions value, $Res Function(PostManagementSuggestions) _then) = _$PostManagementSuggestionsCopyWithImpl;
@useResult
$Res call({
 List<ProfileEntity> suggestions
});




}
/// @nodoc
class _$PostManagementSuggestionsCopyWithImpl<$Res>
    implements $PostManagementSuggestionsCopyWith<$Res> {
  _$PostManagementSuggestionsCopyWithImpl(this._self, this._then);

  final PostManagementSuggestions _self;
  final $Res Function(PostManagementSuggestions) _then;

/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? suggestions = null,}) {
  return _then(PostManagementSuggestions(
null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>,
  ));
}


}

/// @nodoc


class PostManagementPostFormDataSuccess implements PostManagementState {
  const PostManagementPostFormDataSuccess(this.post);
  

 final  PostEntity post;

/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostManagementPostFormDataSuccessCopyWith<PostManagementPostFormDataSuccess> get copyWith => _$PostManagementPostFormDataSuccessCopyWithImpl<PostManagementPostFormDataSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementPostFormDataSuccess&&(identical(other.post, post) || other.post == post));
}


@override
int get hashCode => Object.hash(runtimeType,post);

@override
String toString() {
  return 'PostManagementState.postFormDataSuccess(post: $post)';
}


}

/// @nodoc
abstract mixin class $PostManagementPostFormDataSuccessCopyWith<$Res> implements $PostManagementStateCopyWith<$Res> {
  factory $PostManagementPostFormDataSuccessCopyWith(PostManagementPostFormDataSuccess value, $Res Function(PostManagementPostFormDataSuccess) _then) = _$PostManagementPostFormDataSuccessCopyWithImpl;
@useResult
$Res call({
 PostEntity post
});




}
/// @nodoc
class _$PostManagementPostFormDataSuccessCopyWithImpl<$Res>
    implements $PostManagementPostFormDataSuccessCopyWith<$Res> {
  _$PostManagementPostFormDataSuccessCopyWithImpl(this._self, this._then);

  final PostManagementPostFormDataSuccess _self;
  final $Res Function(PostManagementPostFormDataSuccess) _then;

/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? post = null,}) {
  return _then(PostManagementPostFormDataSuccess(
null == post ? _self.post : post // ignore: cast_nullable_to_non_nullable
as PostEntity,
  ));
}


}

/// @nodoc


class PostManagementFetchPostByIdError implements PostManagementState {
  const PostManagementFetchPostByIdError(this.message);
  

 final  String message;

/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostManagementFetchPostByIdErrorCopyWith<PostManagementFetchPostByIdError> get copyWith => _$PostManagementFetchPostByIdErrorCopyWithImpl<PostManagementFetchPostByIdError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementFetchPostByIdError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'PostManagementState.fetchPostByIdError(message: $message)';
}


}

/// @nodoc
abstract mixin class $PostManagementFetchPostByIdErrorCopyWith<$Res> implements $PostManagementStateCopyWith<$Res> {
  factory $PostManagementFetchPostByIdErrorCopyWith(PostManagementFetchPostByIdError value, $Res Function(PostManagementFetchPostByIdError) _then) = _$PostManagementFetchPostByIdErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$PostManagementFetchPostByIdErrorCopyWithImpl<$Res>
    implements $PostManagementFetchPostByIdErrorCopyWith<$Res> {
  _$PostManagementFetchPostByIdErrorCopyWithImpl(this._self, this._then);

  final PostManagementFetchPostByIdError _self;
  final $Res Function(PostManagementFetchPostByIdError) _then;

/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(PostManagementFetchPostByIdError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class PostManagementError implements PostManagementState {
  const PostManagementError({required this.message, final  List<String> failedMediaIds = const []}): _failedMediaIds = failedMediaIds;
  

 final  String message;
 final  List<String> _failedMediaIds;
@JsonKey() List<String> get failedMediaIds {
  if (_failedMediaIds is EqualUnmodifiableListView) return _failedMediaIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_failedMediaIds);
}


/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostManagementErrorCopyWith<PostManagementError> get copyWith => _$PostManagementErrorCopyWithImpl<PostManagementError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostManagementError&&(identical(other.message, message) || other.message == message)&&const DeepCollectionEquality().equals(other._failedMediaIds, _failedMediaIds));
}


@override
int get hashCode => Object.hash(runtimeType,message,const DeepCollectionEquality().hash(_failedMediaIds));

@override
String toString() {
  return 'PostManagementState.error(message: $message, failedMediaIds: $failedMediaIds)';
}


}

/// @nodoc
abstract mixin class $PostManagementErrorCopyWith<$Res> implements $PostManagementStateCopyWith<$Res> {
  factory $PostManagementErrorCopyWith(PostManagementError value, $Res Function(PostManagementError) _then) = _$PostManagementErrorCopyWithImpl;
@useResult
$Res call({
 String message, List<String> failedMediaIds
});




}
/// @nodoc
class _$PostManagementErrorCopyWithImpl<$Res>
    implements $PostManagementErrorCopyWith<$Res> {
  _$PostManagementErrorCopyWithImpl(this._self, this._then);

  final PostManagementError _self;
  final $Res Function(PostManagementError) _then;

/// Create a copy of PostManagementState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? failedMediaIds = null,}) {
  return _then(PostManagementError(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,failedMediaIds: null == failedMediaIds ? _self._failedMediaIds : failedMediaIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
