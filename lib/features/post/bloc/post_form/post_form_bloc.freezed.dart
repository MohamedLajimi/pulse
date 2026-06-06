// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PostFormEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostFormEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostFormEvent()';
}


}

/// @nodoc
class $PostFormEventCopyWith<$Res>  {
$PostFormEventCopyWith(PostFormEvent _, $Res Function(PostFormEvent) __);
}


/// Adds pattern-matching-related methods to [PostFormEvent].
extension PostFormEventPatterns on PostFormEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( Initialize value)?  initialize,TResult Function( CaptionChanged value)?  captionChanged,TResult Function( SearchMentions value)?  searchMentions,TResult Function( SearchHashtags value)?  searchHashtags,TResult Function( StopSearch value)?  stopSearch,TResult Function( LocationChanged value)?  locationChanged,TResult Function( AddMedia value)?  addMedia,TResult Function( RemoveMedia value)?  removeMedia,TResult Function( ReorderMedia value)?  reorderMedia,TResult Function( UpdateMediaUrls value)?  updateMediaUrls,TResult Function( MentionSelected value)?  mentionSelected,TResult Function( UpdateMentionSuggestions value)?  updateMentionSuggestions,TResult Function( Reset value)?  reset,required TResult orElse(),}){
final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize(_that);case CaptionChanged() when captionChanged != null:
return captionChanged(_that);case SearchMentions() when searchMentions != null:
return searchMentions(_that);case SearchHashtags() when searchHashtags != null:
return searchHashtags(_that);case StopSearch() when stopSearch != null:
return stopSearch(_that);case LocationChanged() when locationChanged != null:
return locationChanged(_that);case AddMedia() when addMedia != null:
return addMedia(_that);case RemoveMedia() when removeMedia != null:
return removeMedia(_that);case ReorderMedia() when reorderMedia != null:
return reorderMedia(_that);case UpdateMediaUrls() when updateMediaUrls != null:
return updateMediaUrls(_that);case MentionSelected() when mentionSelected != null:
return mentionSelected(_that);case UpdateMentionSuggestions() when updateMentionSuggestions != null:
return updateMentionSuggestions(_that);case Reset() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( Initialize value)  initialize,required TResult Function( CaptionChanged value)  captionChanged,required TResult Function( SearchMentions value)  searchMentions,required TResult Function( SearchHashtags value)  searchHashtags,required TResult Function( StopSearch value)  stopSearch,required TResult Function( LocationChanged value)  locationChanged,required TResult Function( AddMedia value)  addMedia,required TResult Function( RemoveMedia value)  removeMedia,required TResult Function( ReorderMedia value)  reorderMedia,required TResult Function( UpdateMediaUrls value)  updateMediaUrls,required TResult Function( MentionSelected value)  mentionSelected,required TResult Function( UpdateMentionSuggestions value)  updateMentionSuggestions,required TResult Function( Reset value)  reset,}){
final _that = this;
switch (_that) {
case Initialize():
return initialize(_that);case CaptionChanged():
return captionChanged(_that);case SearchMentions():
return searchMentions(_that);case SearchHashtags():
return searchHashtags(_that);case StopSearch():
return stopSearch(_that);case LocationChanged():
return locationChanged(_that);case AddMedia():
return addMedia(_that);case RemoveMedia():
return removeMedia(_that);case ReorderMedia():
return reorderMedia(_that);case UpdateMediaUrls():
return updateMediaUrls(_that);case MentionSelected():
return mentionSelected(_that);case UpdateMentionSuggestions():
return updateMentionSuggestions(_that);case Reset():
return reset(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( Initialize value)?  initialize,TResult? Function( CaptionChanged value)?  captionChanged,TResult? Function( SearchMentions value)?  searchMentions,TResult? Function( SearchHashtags value)?  searchHashtags,TResult? Function( StopSearch value)?  stopSearch,TResult? Function( LocationChanged value)?  locationChanged,TResult? Function( AddMedia value)?  addMedia,TResult? Function( RemoveMedia value)?  removeMedia,TResult? Function( ReorderMedia value)?  reorderMedia,TResult? Function( UpdateMediaUrls value)?  updateMediaUrls,TResult? Function( MentionSelected value)?  mentionSelected,TResult? Function( UpdateMentionSuggestions value)?  updateMentionSuggestions,TResult? Function( Reset value)?  reset,}){
final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize(_that);case CaptionChanged() when captionChanged != null:
return captionChanged(_that);case SearchMentions() when searchMentions != null:
return searchMentions(_that);case SearchHashtags() when searchHashtags != null:
return searchHashtags(_that);case StopSearch() when stopSearch != null:
return stopSearch(_that);case LocationChanged() when locationChanged != null:
return locationChanged(_that);case AddMedia() when addMedia != null:
return addMedia(_that);case RemoveMedia() when removeMedia != null:
return removeMedia(_that);case ReorderMedia() when reorderMedia != null:
return reorderMedia(_that);case UpdateMediaUrls() when updateMediaUrls != null:
return updateMediaUrls(_that);case MentionSelected() when mentionSelected != null:
return mentionSelected(_that);case UpdateMentionSuggestions() when updateMentionSuggestions != null:
return updateMentionSuggestions(_that);case Reset() when reset != null:
return reset(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( PostEntity? existingPost)?  initialize,TResult Function( String caption)?  captionChanged,TResult Function( String query)?  searchMentions,TResult Function( String query)?  searchHashtags,TResult Function()?  stopSearch,TResult Function( String? location)?  locationChanged,TResult Function( List<PostFormMedia> media)?  addMedia,TResult Function( String id)?  removeMedia,TResult Function( int oldIndex,  int newIndex)?  reorderMedia,TResult Function( List<MediaUploadResult> results)?  updateMediaUrls,TResult Function( String username)?  mentionSelected,TResult Function( List<ProfileEntity> suggestions)?  updateMentionSuggestions,TResult Function()?  reset,required TResult orElse(),}) {final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize(_that.existingPost);case CaptionChanged() when captionChanged != null:
return captionChanged(_that.caption);case SearchMentions() when searchMentions != null:
return searchMentions(_that.query);case SearchHashtags() when searchHashtags != null:
return searchHashtags(_that.query);case StopSearch() when stopSearch != null:
return stopSearch();case LocationChanged() when locationChanged != null:
return locationChanged(_that.location);case AddMedia() when addMedia != null:
return addMedia(_that.media);case RemoveMedia() when removeMedia != null:
return removeMedia(_that.id);case ReorderMedia() when reorderMedia != null:
return reorderMedia(_that.oldIndex,_that.newIndex);case UpdateMediaUrls() when updateMediaUrls != null:
return updateMediaUrls(_that.results);case MentionSelected() when mentionSelected != null:
return mentionSelected(_that.username);case UpdateMentionSuggestions() when updateMentionSuggestions != null:
return updateMentionSuggestions(_that.suggestions);case Reset() when reset != null:
return reset();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( PostEntity? existingPost)  initialize,required TResult Function( String caption)  captionChanged,required TResult Function( String query)  searchMentions,required TResult Function( String query)  searchHashtags,required TResult Function()  stopSearch,required TResult Function( String? location)  locationChanged,required TResult Function( List<PostFormMedia> media)  addMedia,required TResult Function( String id)  removeMedia,required TResult Function( int oldIndex,  int newIndex)  reorderMedia,required TResult Function( List<MediaUploadResult> results)  updateMediaUrls,required TResult Function( String username)  mentionSelected,required TResult Function( List<ProfileEntity> suggestions)  updateMentionSuggestions,required TResult Function()  reset,}) {final _that = this;
switch (_that) {
case Initialize():
return initialize(_that.existingPost);case CaptionChanged():
return captionChanged(_that.caption);case SearchMentions():
return searchMentions(_that.query);case SearchHashtags():
return searchHashtags(_that.query);case StopSearch():
return stopSearch();case LocationChanged():
return locationChanged(_that.location);case AddMedia():
return addMedia(_that.media);case RemoveMedia():
return removeMedia(_that.id);case ReorderMedia():
return reorderMedia(_that.oldIndex,_that.newIndex);case UpdateMediaUrls():
return updateMediaUrls(_that.results);case MentionSelected():
return mentionSelected(_that.username);case UpdateMentionSuggestions():
return updateMentionSuggestions(_that.suggestions);case Reset():
return reset();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( PostEntity? existingPost)?  initialize,TResult? Function( String caption)?  captionChanged,TResult? Function( String query)?  searchMentions,TResult? Function( String query)?  searchHashtags,TResult? Function()?  stopSearch,TResult? Function( String? location)?  locationChanged,TResult? Function( List<PostFormMedia> media)?  addMedia,TResult? Function( String id)?  removeMedia,TResult? Function( int oldIndex,  int newIndex)?  reorderMedia,TResult? Function( List<MediaUploadResult> results)?  updateMediaUrls,TResult? Function( String username)?  mentionSelected,TResult? Function( List<ProfileEntity> suggestions)?  updateMentionSuggestions,TResult? Function()?  reset,}) {final _that = this;
switch (_that) {
case Initialize() when initialize != null:
return initialize(_that.existingPost);case CaptionChanged() when captionChanged != null:
return captionChanged(_that.caption);case SearchMentions() when searchMentions != null:
return searchMentions(_that.query);case SearchHashtags() when searchHashtags != null:
return searchHashtags(_that.query);case StopSearch() when stopSearch != null:
return stopSearch();case LocationChanged() when locationChanged != null:
return locationChanged(_that.location);case AddMedia() when addMedia != null:
return addMedia(_that.media);case RemoveMedia() when removeMedia != null:
return removeMedia(_that.id);case ReorderMedia() when reorderMedia != null:
return reorderMedia(_that.oldIndex,_that.newIndex);case UpdateMediaUrls() when updateMediaUrls != null:
return updateMediaUrls(_that.results);case MentionSelected() when mentionSelected != null:
return mentionSelected(_that.username);case UpdateMentionSuggestions() when updateMentionSuggestions != null:
return updateMentionSuggestions(_that.suggestions);case Reset() when reset != null:
return reset();case _:
  return null;

}
}

}

/// @nodoc


class Initialize implements PostFormEvent {
  const Initialize({this.existingPost});
  

 final  PostEntity? existingPost;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$InitializeCopyWith<Initialize> get copyWith => _$InitializeCopyWithImpl<Initialize>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Initialize&&(identical(other.existingPost, existingPost) || other.existingPost == existingPost));
}


@override
int get hashCode => Object.hash(runtimeType,existingPost);

@override
String toString() {
  return 'PostFormEvent.initialize(existingPost: $existingPost)';
}


}

/// @nodoc
abstract mixin class $InitializeCopyWith<$Res> implements $PostFormEventCopyWith<$Res> {
  factory $InitializeCopyWith(Initialize value, $Res Function(Initialize) _then) = _$InitializeCopyWithImpl;
@useResult
$Res call({
 PostEntity? existingPost
});




}
/// @nodoc
class _$InitializeCopyWithImpl<$Res>
    implements $InitializeCopyWith<$Res> {
  _$InitializeCopyWithImpl(this._self, this._then);

  final Initialize _self;
  final $Res Function(Initialize) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? existingPost = freezed,}) {
  return _then(Initialize(
existingPost: freezed == existingPost ? _self.existingPost : existingPost // ignore: cast_nullable_to_non_nullable
as PostEntity?,
  ));
}


}

/// @nodoc


class CaptionChanged implements PostFormEvent {
  const CaptionChanged(this.caption);
  

 final  String caption;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CaptionChangedCopyWith<CaptionChanged> get copyWith => _$CaptionChangedCopyWithImpl<CaptionChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CaptionChanged&&(identical(other.caption, caption) || other.caption == caption));
}


@override
int get hashCode => Object.hash(runtimeType,caption);

@override
String toString() {
  return 'PostFormEvent.captionChanged(caption: $caption)';
}


}

/// @nodoc
abstract mixin class $CaptionChangedCopyWith<$Res> implements $PostFormEventCopyWith<$Res> {
  factory $CaptionChangedCopyWith(CaptionChanged value, $Res Function(CaptionChanged) _then) = _$CaptionChangedCopyWithImpl;
@useResult
$Res call({
 String caption
});




}
/// @nodoc
class _$CaptionChangedCopyWithImpl<$Res>
    implements $CaptionChangedCopyWith<$Res> {
  _$CaptionChangedCopyWithImpl(this._self, this._then);

  final CaptionChanged _self;
  final $Res Function(CaptionChanged) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? caption = null,}) {
  return _then(CaptionChanged(
null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchMentions implements PostFormEvent {
  const SearchMentions(this.query);
  

 final  String query;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchMentionsCopyWith<SearchMentions> get copyWith => _$SearchMentionsCopyWithImpl<SearchMentions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchMentions&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'PostFormEvent.searchMentions(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchMentionsCopyWith<$Res> implements $PostFormEventCopyWith<$Res> {
  factory $SearchMentionsCopyWith(SearchMentions value, $Res Function(SearchMentions) _then) = _$SearchMentionsCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchMentionsCopyWithImpl<$Res>
    implements $SearchMentionsCopyWith<$Res> {
  _$SearchMentionsCopyWithImpl(this._self, this._then);

  final SearchMentions _self;
  final $Res Function(SearchMentions) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchMentions(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SearchHashtags implements PostFormEvent {
  const SearchHashtags(this.query);
  

 final  String query;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchHashtagsCopyWith<SearchHashtags> get copyWith => _$SearchHashtagsCopyWithImpl<SearchHashtags>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchHashtags&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode => Object.hash(runtimeType,query);

@override
String toString() {
  return 'PostFormEvent.searchHashtags(query: $query)';
}


}

/// @nodoc
abstract mixin class $SearchHashtagsCopyWith<$Res> implements $PostFormEventCopyWith<$Res> {
  factory $SearchHashtagsCopyWith(SearchHashtags value, $Res Function(SearchHashtags) _then) = _$SearchHashtagsCopyWithImpl;
@useResult
$Res call({
 String query
});




}
/// @nodoc
class _$SearchHashtagsCopyWithImpl<$Res>
    implements $SearchHashtagsCopyWith<$Res> {
  _$SearchHashtagsCopyWithImpl(this._self, this._then);

  final SearchHashtags _self;
  final $Res Function(SearchHashtags) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? query = null,}) {
  return _then(SearchHashtags(
null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class StopSearch implements PostFormEvent {
  const StopSearch();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is StopSearch);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostFormEvent.stopSearch()';
}


}




/// @nodoc


class LocationChanged implements PostFormEvent {
  const LocationChanged(this.location);
  

 final  String? location;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationChangedCopyWith<LocationChanged> get copyWith => _$LocationChangedCopyWithImpl<LocationChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationChanged&&(identical(other.location, location) || other.location == location));
}


@override
int get hashCode => Object.hash(runtimeType,location);

@override
String toString() {
  return 'PostFormEvent.locationChanged(location: $location)';
}


}

/// @nodoc
abstract mixin class $LocationChangedCopyWith<$Res> implements $PostFormEventCopyWith<$Res> {
  factory $LocationChangedCopyWith(LocationChanged value, $Res Function(LocationChanged) _then) = _$LocationChangedCopyWithImpl;
@useResult
$Res call({
 String? location
});




}
/// @nodoc
class _$LocationChangedCopyWithImpl<$Res>
    implements $LocationChangedCopyWith<$Res> {
  _$LocationChangedCopyWithImpl(this._self, this._then);

  final LocationChanged _self;
  final $Res Function(LocationChanged) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? location = freezed,}) {
  return _then(LocationChanged(
freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class AddMedia implements PostFormEvent {
  const AddMedia(final  List<PostFormMedia> media): _media = media;
  

 final  List<PostFormMedia> _media;
 List<PostFormMedia> get media {
  if (_media is EqualUnmodifiableListView) return _media;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_media);
}


/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AddMediaCopyWith<AddMedia> get copyWith => _$AddMediaCopyWithImpl<AddMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AddMedia&&const DeepCollectionEquality().equals(other._media, _media));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_media));

@override
String toString() {
  return 'PostFormEvent.addMedia(media: $media)';
}


}

/// @nodoc
abstract mixin class $AddMediaCopyWith<$Res> implements $PostFormEventCopyWith<$Res> {
  factory $AddMediaCopyWith(AddMedia value, $Res Function(AddMedia) _then) = _$AddMediaCopyWithImpl;
@useResult
$Res call({
 List<PostFormMedia> media
});




}
/// @nodoc
class _$AddMediaCopyWithImpl<$Res>
    implements $AddMediaCopyWith<$Res> {
  _$AddMediaCopyWithImpl(this._self, this._then);

  final AddMedia _self;
  final $Res Function(AddMedia) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? media = null,}) {
  return _then(AddMedia(
null == media ? _self._media : media // ignore: cast_nullable_to_non_nullable
as List<PostFormMedia>,
  ));
}


}

/// @nodoc


class RemoveMedia implements PostFormEvent {
  const RemoveMedia(this.id);
  

 final  String id;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RemoveMediaCopyWith<RemoveMedia> get copyWith => _$RemoveMediaCopyWithImpl<RemoveMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveMedia&&(identical(other.id, id) || other.id == id));
}


@override
int get hashCode => Object.hash(runtimeType,id);

@override
String toString() {
  return 'PostFormEvent.removeMedia(id: $id)';
}


}

/// @nodoc
abstract mixin class $RemoveMediaCopyWith<$Res> implements $PostFormEventCopyWith<$Res> {
  factory $RemoveMediaCopyWith(RemoveMedia value, $Res Function(RemoveMedia) _then) = _$RemoveMediaCopyWithImpl;
@useResult
$Res call({
 String id
});




}
/// @nodoc
class _$RemoveMediaCopyWithImpl<$Res>
    implements $RemoveMediaCopyWith<$Res> {
  _$RemoveMediaCopyWithImpl(this._self, this._then);

  final RemoveMedia _self;
  final $Res Function(RemoveMedia) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? id = null,}) {
  return _then(RemoveMedia(
null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ReorderMedia implements PostFormEvent {
  const ReorderMedia({required this.oldIndex, required this.newIndex});
  

 final  int oldIndex;
 final  int newIndex;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReorderMediaCopyWith<ReorderMedia> get copyWith => _$ReorderMediaCopyWithImpl<ReorderMedia>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReorderMedia&&(identical(other.oldIndex, oldIndex) || other.oldIndex == oldIndex)&&(identical(other.newIndex, newIndex) || other.newIndex == newIndex));
}


@override
int get hashCode => Object.hash(runtimeType,oldIndex,newIndex);

@override
String toString() {
  return 'PostFormEvent.reorderMedia(oldIndex: $oldIndex, newIndex: $newIndex)';
}


}

/// @nodoc
abstract mixin class $ReorderMediaCopyWith<$Res> implements $PostFormEventCopyWith<$Res> {
  factory $ReorderMediaCopyWith(ReorderMedia value, $Res Function(ReorderMedia) _then) = _$ReorderMediaCopyWithImpl;
@useResult
$Res call({
 int oldIndex, int newIndex
});




}
/// @nodoc
class _$ReorderMediaCopyWithImpl<$Res>
    implements $ReorderMediaCopyWith<$Res> {
  _$ReorderMediaCopyWithImpl(this._self, this._then);

  final ReorderMedia _self;
  final $Res Function(ReorderMedia) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? oldIndex = null,Object? newIndex = null,}) {
  return _then(ReorderMedia(
oldIndex: null == oldIndex ? _self.oldIndex : oldIndex // ignore: cast_nullable_to_non_nullable
as int,newIndex: null == newIndex ? _self.newIndex : newIndex // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc


class UpdateMediaUrls implements PostFormEvent {
  const UpdateMediaUrls(final  List<MediaUploadResult> results): _results = results;
  

 final  List<MediaUploadResult> _results;
 List<MediaUploadResult> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateMediaUrlsCopyWith<UpdateMediaUrls> get copyWith => _$UpdateMediaUrlsCopyWithImpl<UpdateMediaUrls>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateMediaUrls&&const DeepCollectionEquality().equals(other._results, _results));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_results));

@override
String toString() {
  return 'PostFormEvent.updateMediaUrls(results: $results)';
}


}

/// @nodoc
abstract mixin class $UpdateMediaUrlsCopyWith<$Res> implements $PostFormEventCopyWith<$Res> {
  factory $UpdateMediaUrlsCopyWith(UpdateMediaUrls value, $Res Function(UpdateMediaUrls) _then) = _$UpdateMediaUrlsCopyWithImpl;
@useResult
$Res call({
 List<MediaUploadResult> results
});




}
/// @nodoc
class _$UpdateMediaUrlsCopyWithImpl<$Res>
    implements $UpdateMediaUrlsCopyWith<$Res> {
  _$UpdateMediaUrlsCopyWithImpl(this._self, this._then);

  final UpdateMediaUrls _self;
  final $Res Function(UpdateMediaUrls) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? results = null,}) {
  return _then(UpdateMediaUrls(
null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<MediaUploadResult>,
  ));
}


}

/// @nodoc


class MentionSelected implements PostFormEvent {
  const MentionSelected(this.username);
  

 final  String username;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MentionSelectedCopyWith<MentionSelected> get copyWith => _$MentionSelectedCopyWithImpl<MentionSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MentionSelected&&(identical(other.username, username) || other.username == username));
}


@override
int get hashCode => Object.hash(runtimeType,username);

@override
String toString() {
  return 'PostFormEvent.mentionSelected(username: $username)';
}


}

/// @nodoc
abstract mixin class $MentionSelectedCopyWith<$Res> implements $PostFormEventCopyWith<$Res> {
  factory $MentionSelectedCopyWith(MentionSelected value, $Res Function(MentionSelected) _then) = _$MentionSelectedCopyWithImpl;
@useResult
$Res call({
 String username
});




}
/// @nodoc
class _$MentionSelectedCopyWithImpl<$Res>
    implements $MentionSelectedCopyWith<$Res> {
  _$MentionSelectedCopyWithImpl(this._self, this._then);

  final MentionSelected _self;
  final $Res Function(MentionSelected) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? username = null,}) {
  return _then(MentionSelected(
null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UpdateMentionSuggestions implements PostFormEvent {
  const UpdateMentionSuggestions(final  List<ProfileEntity> suggestions): _suggestions = suggestions;
  

 final  List<ProfileEntity> _suggestions;
 List<ProfileEntity> get suggestions {
  if (_suggestions is EqualUnmodifiableListView) return _suggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_suggestions);
}


/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateMentionSuggestionsCopyWith<UpdateMentionSuggestions> get copyWith => _$UpdateMentionSuggestionsCopyWithImpl<UpdateMentionSuggestions>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateMentionSuggestions&&const DeepCollectionEquality().equals(other._suggestions, _suggestions));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_suggestions));

@override
String toString() {
  return 'PostFormEvent.updateMentionSuggestions(suggestions: $suggestions)';
}


}

/// @nodoc
abstract mixin class $UpdateMentionSuggestionsCopyWith<$Res> implements $PostFormEventCopyWith<$Res> {
  factory $UpdateMentionSuggestionsCopyWith(UpdateMentionSuggestions value, $Res Function(UpdateMentionSuggestions) _then) = _$UpdateMentionSuggestionsCopyWithImpl;
@useResult
$Res call({
 List<ProfileEntity> suggestions
});




}
/// @nodoc
class _$UpdateMentionSuggestionsCopyWithImpl<$Res>
    implements $UpdateMentionSuggestionsCopyWith<$Res> {
  _$UpdateMentionSuggestionsCopyWithImpl(this._self, this._then);

  final UpdateMentionSuggestions _self;
  final $Res Function(UpdateMentionSuggestions) _then;

/// Create a copy of PostFormEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? suggestions = null,}) {
  return _then(UpdateMentionSuggestions(
null == suggestions ? _self._suggestions : suggestions // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>,
  ));
}


}

/// @nodoc


class Reset implements PostFormEvent {
  const Reset();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Reset);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'PostFormEvent.reset()';
}


}




/// @nodoc
mixin _$PostFormState {

 String get id; String get caption; String? get location; List<PostFormMedia> get mediaList; List<String> get mentions; List<String> get hashtags; bool get isEditMode; String? get originalPostId; PostEntity? get existingPost; String get mentionQuery; bool get isSearchingMention; List<ProfileEntity> get mentionSuggestions; String get hashtagQuery; bool get isSearchingHashtag;
/// Create a copy of PostFormState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PostFormStateCopyWith<PostFormState> get copyWith => _$PostFormStateCopyWithImpl<PostFormState>(this as PostFormState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PostFormState&&(identical(other.id, id) || other.id == id)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other.mediaList, mediaList)&&const DeepCollectionEquality().equals(other.mentions, mentions)&&const DeepCollectionEquality().equals(other.hashtags, hashtags)&&(identical(other.isEditMode, isEditMode) || other.isEditMode == isEditMode)&&(identical(other.originalPostId, originalPostId) || other.originalPostId == originalPostId)&&(identical(other.existingPost, existingPost) || other.existingPost == existingPost)&&(identical(other.mentionQuery, mentionQuery) || other.mentionQuery == mentionQuery)&&(identical(other.isSearchingMention, isSearchingMention) || other.isSearchingMention == isSearchingMention)&&const DeepCollectionEquality().equals(other.mentionSuggestions, mentionSuggestions)&&(identical(other.hashtagQuery, hashtagQuery) || other.hashtagQuery == hashtagQuery)&&(identical(other.isSearchingHashtag, isSearchingHashtag) || other.isSearchingHashtag == isSearchingHashtag));
}


@override
int get hashCode => Object.hash(runtimeType,id,caption,location,const DeepCollectionEquality().hash(mediaList),const DeepCollectionEquality().hash(mentions),const DeepCollectionEquality().hash(hashtags),isEditMode,originalPostId,existingPost,mentionQuery,isSearchingMention,const DeepCollectionEquality().hash(mentionSuggestions),hashtagQuery,isSearchingHashtag);

@override
String toString() {
  return 'PostFormState(id: $id, caption: $caption, location: $location, mediaList: $mediaList, mentions: $mentions, hashtags: $hashtags, isEditMode: $isEditMode, originalPostId: $originalPostId, existingPost: $existingPost, mentionQuery: $mentionQuery, isSearchingMention: $isSearchingMention, mentionSuggestions: $mentionSuggestions, hashtagQuery: $hashtagQuery, isSearchingHashtag: $isSearchingHashtag)';
}


}

/// @nodoc
abstract mixin class $PostFormStateCopyWith<$Res>  {
  factory $PostFormStateCopyWith(PostFormState value, $Res Function(PostFormState) _then) = _$PostFormStateCopyWithImpl;
@useResult
$Res call({
 String id, String caption, String? location, List<PostFormMedia> mediaList, List<String> mentions, List<String> hashtags, bool isEditMode, String? originalPostId, PostEntity? existingPost, String mentionQuery, bool isSearchingMention, List<ProfileEntity> mentionSuggestions, String hashtagQuery, bool isSearchingHashtag
});




}
/// @nodoc
class _$PostFormStateCopyWithImpl<$Res>
    implements $PostFormStateCopyWith<$Res> {
  _$PostFormStateCopyWithImpl(this._self, this._then);

  final PostFormState _self;
  final $Res Function(PostFormState) _then;

/// Create a copy of PostFormState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? caption = null,Object? location = freezed,Object? mediaList = null,Object? mentions = null,Object? hashtags = null,Object? isEditMode = null,Object? originalPostId = freezed,Object? existingPost = freezed,Object? mentionQuery = null,Object? isSearchingMention = null,Object? mentionSuggestions = null,Object? hashtagQuery = null,Object? isSearchingHashtag = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,caption: null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,mediaList: null == mediaList ? _self.mediaList : mediaList // ignore: cast_nullable_to_non_nullable
as List<PostFormMedia>,mentions: null == mentions ? _self.mentions : mentions // ignore: cast_nullable_to_non_nullable
as List<String>,hashtags: null == hashtags ? _self.hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,isEditMode: null == isEditMode ? _self.isEditMode : isEditMode // ignore: cast_nullable_to_non_nullable
as bool,originalPostId: freezed == originalPostId ? _self.originalPostId : originalPostId // ignore: cast_nullable_to_non_nullable
as String?,existingPost: freezed == existingPost ? _self.existingPost : existingPost // ignore: cast_nullable_to_non_nullable
as PostEntity?,mentionQuery: null == mentionQuery ? _self.mentionQuery : mentionQuery // ignore: cast_nullable_to_non_nullable
as String,isSearchingMention: null == isSearchingMention ? _self.isSearchingMention : isSearchingMention // ignore: cast_nullable_to_non_nullable
as bool,mentionSuggestions: null == mentionSuggestions ? _self.mentionSuggestions : mentionSuggestions // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>,hashtagQuery: null == hashtagQuery ? _self.hashtagQuery : hashtagQuery // ignore: cast_nullable_to_non_nullable
as String,isSearchingHashtag: null == isSearchingHashtag ? _self.isSearchingHashtag : isSearchingHashtag // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [PostFormState].
extension PostFormStatePatterns on PostFormState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PostFormState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PostFormState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PostFormState value)  $default,){
final _that = this;
switch (_that) {
case _PostFormState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PostFormState value)?  $default,){
final _that = this;
switch (_that) {
case _PostFormState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String caption,  String? location,  List<PostFormMedia> mediaList,  List<String> mentions,  List<String> hashtags,  bool isEditMode,  String? originalPostId,  PostEntity? existingPost,  String mentionQuery,  bool isSearchingMention,  List<ProfileEntity> mentionSuggestions,  String hashtagQuery,  bool isSearchingHashtag)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PostFormState() when $default != null:
return $default(_that.id,_that.caption,_that.location,_that.mediaList,_that.mentions,_that.hashtags,_that.isEditMode,_that.originalPostId,_that.existingPost,_that.mentionQuery,_that.isSearchingMention,_that.mentionSuggestions,_that.hashtagQuery,_that.isSearchingHashtag);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String caption,  String? location,  List<PostFormMedia> mediaList,  List<String> mentions,  List<String> hashtags,  bool isEditMode,  String? originalPostId,  PostEntity? existingPost,  String mentionQuery,  bool isSearchingMention,  List<ProfileEntity> mentionSuggestions,  String hashtagQuery,  bool isSearchingHashtag)  $default,) {final _that = this;
switch (_that) {
case _PostFormState():
return $default(_that.id,_that.caption,_that.location,_that.mediaList,_that.mentions,_that.hashtags,_that.isEditMode,_that.originalPostId,_that.existingPost,_that.mentionQuery,_that.isSearchingMention,_that.mentionSuggestions,_that.hashtagQuery,_that.isSearchingHashtag);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String caption,  String? location,  List<PostFormMedia> mediaList,  List<String> mentions,  List<String> hashtags,  bool isEditMode,  String? originalPostId,  PostEntity? existingPost,  String mentionQuery,  bool isSearchingMention,  List<ProfileEntity> mentionSuggestions,  String hashtagQuery,  bool isSearchingHashtag)?  $default,) {final _that = this;
switch (_that) {
case _PostFormState() when $default != null:
return $default(_that.id,_that.caption,_that.location,_that.mediaList,_that.mentions,_that.hashtags,_that.isEditMode,_that.originalPostId,_that.existingPost,_that.mentionQuery,_that.isSearchingMention,_that.mentionSuggestions,_that.hashtagQuery,_that.isSearchingHashtag);case _:
  return null;

}
}

}

/// @nodoc


class _PostFormState extends PostFormState {
  const _PostFormState({this.id = '', this.caption = '', this.location, final  List<PostFormMedia> mediaList = const [], final  List<String> mentions = const [], final  List<String> hashtags = const [], this.isEditMode = false, this.originalPostId, this.existingPost, this.mentionQuery = '', this.isSearchingMention = false, final  List<ProfileEntity> mentionSuggestions = const [], this.hashtagQuery = '', this.isSearchingHashtag = false}): _mediaList = mediaList,_mentions = mentions,_hashtags = hashtags,_mentionSuggestions = mentionSuggestions,super._();
  

@override@JsonKey() final  String id;
@override@JsonKey() final  String caption;
@override final  String? location;
 final  List<PostFormMedia> _mediaList;
@override@JsonKey() List<PostFormMedia> get mediaList {
  if (_mediaList is EqualUnmodifiableListView) return _mediaList;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mediaList);
}

 final  List<String> _mentions;
@override@JsonKey() List<String> get mentions {
  if (_mentions is EqualUnmodifiableListView) return _mentions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentions);
}

 final  List<String> _hashtags;
@override@JsonKey() List<String> get hashtags {
  if (_hashtags is EqualUnmodifiableListView) return _hashtags;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_hashtags);
}

@override@JsonKey() final  bool isEditMode;
@override final  String? originalPostId;
@override final  PostEntity? existingPost;
@override@JsonKey() final  String mentionQuery;
@override@JsonKey() final  bool isSearchingMention;
 final  List<ProfileEntity> _mentionSuggestions;
@override@JsonKey() List<ProfileEntity> get mentionSuggestions {
  if (_mentionSuggestions is EqualUnmodifiableListView) return _mentionSuggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentionSuggestions);
}

@override@JsonKey() final  String hashtagQuery;
@override@JsonKey() final  bool isSearchingHashtag;

/// Create a copy of PostFormState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PostFormStateCopyWith<_PostFormState> get copyWith => __$PostFormStateCopyWithImpl<_PostFormState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PostFormState&&(identical(other.id, id) || other.id == id)&&(identical(other.caption, caption) || other.caption == caption)&&(identical(other.location, location) || other.location == location)&&const DeepCollectionEquality().equals(other._mediaList, _mediaList)&&const DeepCollectionEquality().equals(other._mentions, _mentions)&&const DeepCollectionEquality().equals(other._hashtags, _hashtags)&&(identical(other.isEditMode, isEditMode) || other.isEditMode == isEditMode)&&(identical(other.originalPostId, originalPostId) || other.originalPostId == originalPostId)&&(identical(other.existingPost, existingPost) || other.existingPost == existingPost)&&(identical(other.mentionQuery, mentionQuery) || other.mentionQuery == mentionQuery)&&(identical(other.isSearchingMention, isSearchingMention) || other.isSearchingMention == isSearchingMention)&&const DeepCollectionEquality().equals(other._mentionSuggestions, _mentionSuggestions)&&(identical(other.hashtagQuery, hashtagQuery) || other.hashtagQuery == hashtagQuery)&&(identical(other.isSearchingHashtag, isSearchingHashtag) || other.isSearchingHashtag == isSearchingHashtag));
}


@override
int get hashCode => Object.hash(runtimeType,id,caption,location,const DeepCollectionEquality().hash(_mediaList),const DeepCollectionEquality().hash(_mentions),const DeepCollectionEquality().hash(_hashtags),isEditMode,originalPostId,existingPost,mentionQuery,isSearchingMention,const DeepCollectionEquality().hash(_mentionSuggestions),hashtagQuery,isSearchingHashtag);

@override
String toString() {
  return 'PostFormState(id: $id, caption: $caption, location: $location, mediaList: $mediaList, mentions: $mentions, hashtags: $hashtags, isEditMode: $isEditMode, originalPostId: $originalPostId, existingPost: $existingPost, mentionQuery: $mentionQuery, isSearchingMention: $isSearchingMention, mentionSuggestions: $mentionSuggestions, hashtagQuery: $hashtagQuery, isSearchingHashtag: $isSearchingHashtag)';
}


}

/// @nodoc
abstract mixin class _$PostFormStateCopyWith<$Res> implements $PostFormStateCopyWith<$Res> {
  factory _$PostFormStateCopyWith(_PostFormState value, $Res Function(_PostFormState) _then) = __$PostFormStateCopyWithImpl;
@override @useResult
$Res call({
 String id, String caption, String? location, List<PostFormMedia> mediaList, List<String> mentions, List<String> hashtags, bool isEditMode, String? originalPostId, PostEntity? existingPost, String mentionQuery, bool isSearchingMention, List<ProfileEntity> mentionSuggestions, String hashtagQuery, bool isSearchingHashtag
});




}
/// @nodoc
class __$PostFormStateCopyWithImpl<$Res>
    implements _$PostFormStateCopyWith<$Res> {
  __$PostFormStateCopyWithImpl(this._self, this._then);

  final _PostFormState _self;
  final $Res Function(_PostFormState) _then;

/// Create a copy of PostFormState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? caption = null,Object? location = freezed,Object? mediaList = null,Object? mentions = null,Object? hashtags = null,Object? isEditMode = null,Object? originalPostId = freezed,Object? existingPost = freezed,Object? mentionQuery = null,Object? isSearchingMention = null,Object? mentionSuggestions = null,Object? hashtagQuery = null,Object? isSearchingHashtag = null,}) {
  return _then(_PostFormState(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,caption: null == caption ? _self.caption : caption // ignore: cast_nullable_to_non_nullable
as String,location: freezed == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as String?,mediaList: null == mediaList ? _self._mediaList : mediaList // ignore: cast_nullable_to_non_nullable
as List<PostFormMedia>,mentions: null == mentions ? _self._mentions : mentions // ignore: cast_nullable_to_non_nullable
as List<String>,hashtags: null == hashtags ? _self._hashtags : hashtags // ignore: cast_nullable_to_non_nullable
as List<String>,isEditMode: null == isEditMode ? _self.isEditMode : isEditMode // ignore: cast_nullable_to_non_nullable
as bool,originalPostId: freezed == originalPostId ? _self.originalPostId : originalPostId // ignore: cast_nullable_to_non_nullable
as String?,existingPost: freezed == existingPost ? _self.existingPost : existingPost // ignore: cast_nullable_to_non_nullable
as PostEntity?,mentionQuery: null == mentionQuery ? _self.mentionQuery : mentionQuery // ignore: cast_nullable_to_non_nullable
as String,isSearchingMention: null == isSearchingMention ? _self.isSearchingMention : isSearchingMention // ignore: cast_nullable_to_non_nullable
as bool,mentionSuggestions: null == mentionSuggestions ? _self._mentionSuggestions : mentionSuggestions // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>,hashtagQuery: null == hashtagQuery ? _self.hashtagQuery : hashtagQuery // ignore: cast_nullable_to_non_nullable
as String,isSearchingHashtag: null == isSearchingHashtag ? _self.isSearchingHashtag : isSearchingHashtag // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
