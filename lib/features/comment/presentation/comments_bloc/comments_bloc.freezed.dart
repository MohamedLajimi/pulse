// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comments_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommentsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommentsEvent()';
}


}

/// @nodoc
class $CommentsEventCopyWith<$Res>  {
$CommentsEventCopyWith(CommentsEvent _, $Res Function(CommentsEvent) __);
}


/// Adds pattern-matching-related methods to [CommentsEvent].
extension CommentsEventPatterns on CommentsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchInitialComments value)?  fetchInitial,TResult Function( FetchMoreComments value)?  fetchMore,TResult Function( SortChanged value)?  sortChanged,TResult Function( _CommentAdded value)?  commentAdded,TResult Function( _CommentRemoved value)?  commentRemoved,TResult Function( _CommentReplaced value)?  commentReplaced,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchInitialComments() when fetchInitial != null:
return fetchInitial(_that);case FetchMoreComments() when fetchMore != null:
return fetchMore(_that);case SortChanged() when sortChanged != null:
return sortChanged(_that);case _CommentAdded() when commentAdded != null:
return commentAdded(_that);case _CommentRemoved() when commentRemoved != null:
return commentRemoved(_that);case _CommentReplaced() when commentReplaced != null:
return commentReplaced(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchInitialComments value)  fetchInitial,required TResult Function( FetchMoreComments value)  fetchMore,required TResult Function( SortChanged value)  sortChanged,required TResult Function( _CommentAdded value)  commentAdded,required TResult Function( _CommentRemoved value)  commentRemoved,required TResult Function( _CommentReplaced value)  commentReplaced,}){
final _that = this;
switch (_that) {
case FetchInitialComments():
return fetchInitial(_that);case FetchMoreComments():
return fetchMore(_that);case SortChanged():
return sortChanged(_that);case _CommentAdded():
return commentAdded(_that);case _CommentRemoved():
return commentRemoved(_that);case _CommentReplaced():
return commentReplaced(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchInitialComments value)?  fetchInitial,TResult? Function( FetchMoreComments value)?  fetchMore,TResult? Function( SortChanged value)?  sortChanged,TResult? Function( _CommentAdded value)?  commentAdded,TResult? Function( _CommentRemoved value)?  commentRemoved,TResult? Function( _CommentReplaced value)?  commentReplaced,}){
final _that = this;
switch (_that) {
case FetchInitialComments() when fetchInitial != null:
return fetchInitial(_that);case FetchMoreComments() when fetchMore != null:
return fetchMore(_that);case SortChanged() when sortChanged != null:
return sortChanged(_that);case _CommentAdded() when commentAdded != null:
return commentAdded(_that);case _CommentRemoved() when commentRemoved != null:
return commentRemoved(_that);case _CommentReplaced() when commentReplaced != null:
return commentReplaced(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String postId,  CommentSortOrder sortOrder)?  fetchInitial,TResult Function( String postId)?  fetchMore,TResult Function( String postId,  CommentSortOrder sortOrder)?  sortChanged,TResult Function( CommentEntity comment)?  commentAdded,TResult Function( String commentId)?  commentRemoved,TResult Function( CommentEntity comment)?  commentReplaced,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchInitialComments() when fetchInitial != null:
return fetchInitial(_that.postId,_that.sortOrder);case FetchMoreComments() when fetchMore != null:
return fetchMore(_that.postId);case SortChanged() when sortChanged != null:
return sortChanged(_that.postId,_that.sortOrder);case _CommentAdded() when commentAdded != null:
return commentAdded(_that.comment);case _CommentRemoved() when commentRemoved != null:
return commentRemoved(_that.commentId);case _CommentReplaced() when commentReplaced != null:
return commentReplaced(_that.comment);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String postId,  CommentSortOrder sortOrder)  fetchInitial,required TResult Function( String postId)  fetchMore,required TResult Function( String postId,  CommentSortOrder sortOrder)  sortChanged,required TResult Function( CommentEntity comment)  commentAdded,required TResult Function( String commentId)  commentRemoved,required TResult Function( CommentEntity comment)  commentReplaced,}) {final _that = this;
switch (_that) {
case FetchInitialComments():
return fetchInitial(_that.postId,_that.sortOrder);case FetchMoreComments():
return fetchMore(_that.postId);case SortChanged():
return sortChanged(_that.postId,_that.sortOrder);case _CommentAdded():
return commentAdded(_that.comment);case _CommentRemoved():
return commentRemoved(_that.commentId);case _CommentReplaced():
return commentReplaced(_that.comment);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String postId,  CommentSortOrder sortOrder)?  fetchInitial,TResult? Function( String postId)?  fetchMore,TResult? Function( String postId,  CommentSortOrder sortOrder)?  sortChanged,TResult? Function( CommentEntity comment)?  commentAdded,TResult? Function( String commentId)?  commentRemoved,TResult? Function( CommentEntity comment)?  commentReplaced,}) {final _that = this;
switch (_that) {
case FetchInitialComments() when fetchInitial != null:
return fetchInitial(_that.postId,_that.sortOrder);case FetchMoreComments() when fetchMore != null:
return fetchMore(_that.postId);case SortChanged() when sortChanged != null:
return sortChanged(_that.postId,_that.sortOrder);case _CommentAdded() when commentAdded != null:
return commentAdded(_that.comment);case _CommentRemoved() when commentRemoved != null:
return commentRemoved(_that.commentId);case _CommentReplaced() when commentReplaced != null:
return commentReplaced(_that.comment);case _:
  return null;

}
}

}

/// @nodoc


class FetchInitialComments implements CommentsEvent {
  const FetchInitialComments({required this.postId, this.sortOrder = CommentSortOrder.newest});
  

 final  String postId;
@JsonKey() final  CommentSortOrder sortOrder;

/// Create a copy of CommentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchInitialCommentsCopyWith<FetchInitialComments> get copyWith => _$FetchInitialCommentsCopyWithImpl<FetchInitialComments>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchInitialComments&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,postId,sortOrder);

@override
String toString() {
  return 'CommentsEvent.fetchInitial(postId: $postId, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $FetchInitialCommentsCopyWith<$Res> implements $CommentsEventCopyWith<$Res> {
  factory $FetchInitialCommentsCopyWith(FetchInitialComments value, $Res Function(FetchInitialComments) _then) = _$FetchInitialCommentsCopyWithImpl;
@useResult
$Res call({
 String postId, CommentSortOrder sortOrder
});




}
/// @nodoc
class _$FetchInitialCommentsCopyWithImpl<$Res>
    implements $FetchInitialCommentsCopyWith<$Res> {
  _$FetchInitialCommentsCopyWithImpl(this._self, this._then);

  final FetchInitialComments _self;
  final $Res Function(FetchInitialComments) _then;

/// Create a copy of CommentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? sortOrder = null,}) {
  return _then(FetchInitialComments(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as CommentSortOrder,
  ));
}


}

/// @nodoc


class FetchMoreComments implements CommentsEvent {
  const FetchMoreComments({required this.postId});
  

 final  String postId;

/// Create a copy of CommentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchMoreCommentsCopyWith<FetchMoreComments> get copyWith => _$FetchMoreCommentsCopyWithImpl<FetchMoreComments>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchMoreComments&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'CommentsEvent.fetchMore(postId: $postId)';
}


}

/// @nodoc
abstract mixin class $FetchMoreCommentsCopyWith<$Res> implements $CommentsEventCopyWith<$Res> {
  factory $FetchMoreCommentsCopyWith(FetchMoreComments value, $Res Function(FetchMoreComments) _then) = _$FetchMoreCommentsCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class _$FetchMoreCommentsCopyWithImpl<$Res>
    implements $FetchMoreCommentsCopyWith<$Res> {
  _$FetchMoreCommentsCopyWithImpl(this._self, this._then);

  final FetchMoreComments _self;
  final $Res Function(FetchMoreComments) _then;

/// Create a copy of CommentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(FetchMoreComments(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SortChanged implements CommentsEvent {
  const SortChanged({required this.postId, required this.sortOrder});
  

 final  String postId;
 final  CommentSortOrder sortOrder;

/// Create a copy of CommentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SortChangedCopyWith<SortChanged> get copyWith => _$SortChangedCopyWithImpl<SortChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SortChanged&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,postId,sortOrder);

@override
String toString() {
  return 'CommentsEvent.sortChanged(postId: $postId, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $SortChangedCopyWith<$Res> implements $CommentsEventCopyWith<$Res> {
  factory $SortChangedCopyWith(SortChanged value, $Res Function(SortChanged) _then) = _$SortChangedCopyWithImpl;
@useResult
$Res call({
 String postId, CommentSortOrder sortOrder
});




}
/// @nodoc
class _$SortChangedCopyWithImpl<$Res>
    implements $SortChangedCopyWith<$Res> {
  _$SortChangedCopyWithImpl(this._self, this._then);

  final SortChanged _self;
  final $Res Function(SortChanged) _then;

/// Create a copy of CommentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? sortOrder = null,}) {
  return _then(SortChanged(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as CommentSortOrder,
  ));
}


}

/// @nodoc


class _CommentAdded implements CommentsEvent {
  const _CommentAdded(this.comment);
  

 final  CommentEntity comment;

/// Create a copy of CommentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentAddedCopyWith<_CommentAdded> get copyWith => __$CommentAddedCopyWithImpl<_CommentAdded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentAdded&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,comment);

@override
String toString() {
  return 'CommentsEvent.commentAdded(comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$CommentAddedCopyWith<$Res> implements $CommentsEventCopyWith<$Res> {
  factory _$CommentAddedCopyWith(_CommentAdded value, $Res Function(_CommentAdded) _then) = __$CommentAddedCopyWithImpl;
@useResult
$Res call({
 CommentEntity comment
});




}
/// @nodoc
class __$CommentAddedCopyWithImpl<$Res>
    implements _$CommentAddedCopyWith<$Res> {
  __$CommentAddedCopyWithImpl(this._self, this._then);

  final _CommentAdded _self;
  final $Res Function(_CommentAdded) _then;

/// Create a copy of CommentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? comment = null,}) {
  return _then(_CommentAdded(
null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as CommentEntity,
  ));
}


}

/// @nodoc


class _CommentRemoved implements CommentsEvent {
  const _CommentRemoved(this.commentId);
  

 final  String commentId;

/// Create a copy of CommentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentRemovedCopyWith<_CommentRemoved> get copyWith => __$CommentRemovedCopyWithImpl<_CommentRemoved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentRemoved&&(identical(other.commentId, commentId) || other.commentId == commentId));
}


@override
int get hashCode => Object.hash(runtimeType,commentId);

@override
String toString() {
  return 'CommentsEvent.commentRemoved(commentId: $commentId)';
}


}

/// @nodoc
abstract mixin class _$CommentRemovedCopyWith<$Res> implements $CommentsEventCopyWith<$Res> {
  factory _$CommentRemovedCopyWith(_CommentRemoved value, $Res Function(_CommentRemoved) _then) = __$CommentRemovedCopyWithImpl;
@useResult
$Res call({
 String commentId
});




}
/// @nodoc
class __$CommentRemovedCopyWithImpl<$Res>
    implements _$CommentRemovedCopyWith<$Res> {
  __$CommentRemovedCopyWithImpl(this._self, this._then);

  final _CommentRemoved _self;
  final $Res Function(_CommentRemoved) _then;

/// Create a copy of CommentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? commentId = null,}) {
  return _then(_CommentRemoved(
null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _CommentReplaced implements CommentsEvent {
  const _CommentReplaced(this.comment);
  

 final  CommentEntity comment;

/// Create a copy of CommentsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentReplacedCopyWith<_CommentReplaced> get copyWith => __$CommentReplacedCopyWithImpl<_CommentReplaced>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentReplaced&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,comment);

@override
String toString() {
  return 'CommentsEvent.commentReplaced(comment: $comment)';
}


}

/// @nodoc
abstract mixin class _$CommentReplacedCopyWith<$Res> implements $CommentsEventCopyWith<$Res> {
  factory _$CommentReplacedCopyWith(_CommentReplaced value, $Res Function(_CommentReplaced) _then) = __$CommentReplacedCopyWithImpl;
@useResult
$Res call({
 CommentEntity comment
});




}
/// @nodoc
class __$CommentReplacedCopyWithImpl<$Res>
    implements _$CommentReplacedCopyWith<$Res> {
  __$CommentReplacedCopyWithImpl(this._self, this._then);

  final _CommentReplaced _self;
  final $Res Function(_CommentReplaced) _then;

/// Create a copy of CommentsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? comment = null,}) {
  return _then(_CommentReplaced(
null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as CommentEntity,
  ));
}


}

/// @nodoc
mixin _$CommentsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommentsState()';
}


}

/// @nodoc
class $CommentsStateCopyWith<$Res>  {
$CommentsStateCopyWith(CommentsState _, $Res Function(CommentsState) __);
}


/// Adds pattern-matching-related methods to [CommentsState].
extension CommentsStatePatterns on CommentsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CommentsLoading value)?  loading,TResult Function( CommentsSuccess value)?  success,TResult Function( CommentsFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CommentsLoading() when loading != null:
return loading(_that);case CommentsSuccess() when success != null:
return success(_that);case CommentsFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CommentsLoading value)  loading,required TResult Function( CommentsSuccess value)  success,required TResult Function( CommentsFailure value)  failure,}){
final _that = this;
switch (_that) {
case CommentsLoading():
return loading(_that);case CommentsSuccess():
return success(_that);case CommentsFailure():
return failure(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CommentsLoading value)?  loading,TResult? Function( CommentsSuccess value)?  success,TResult? Function( CommentsFailure value)?  failure,}){
final _that = this;
switch (_that) {
case CommentsLoading() when loading != null:
return loading(_that);case CommentsSuccess() when success != null:
return success(_that);case CommentsFailure() when failure != null:
return failure(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( List<CommentEntity> comments,  CommentSortOrder sortOrder,  bool hasMore,  int currentPage,  bool isLoadingMore,  String? loadingMoreError)?  success,TResult Function( String message,  CommentSortOrder sortOrder)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CommentsLoading() when loading != null:
return loading();case CommentsSuccess() when success != null:
return success(_that.comments,_that.sortOrder,_that.hasMore,_that.currentPage,_that.isLoadingMore,_that.loadingMoreError);case CommentsFailure() when failure != null:
return failure(_that.message,_that.sortOrder);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( List<CommentEntity> comments,  CommentSortOrder sortOrder,  bool hasMore,  int currentPage,  bool isLoadingMore,  String? loadingMoreError)  success,required TResult Function( String message,  CommentSortOrder sortOrder)  failure,}) {final _that = this;
switch (_that) {
case CommentsLoading():
return loading();case CommentsSuccess():
return success(_that.comments,_that.sortOrder,_that.hasMore,_that.currentPage,_that.isLoadingMore,_that.loadingMoreError);case CommentsFailure():
return failure(_that.message,_that.sortOrder);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( List<CommentEntity> comments,  CommentSortOrder sortOrder,  bool hasMore,  int currentPage,  bool isLoadingMore,  String? loadingMoreError)?  success,TResult? Function( String message,  CommentSortOrder sortOrder)?  failure,}) {final _that = this;
switch (_that) {
case CommentsLoading() when loading != null:
return loading();case CommentsSuccess() when success != null:
return success(_that.comments,_that.sortOrder,_that.hasMore,_that.currentPage,_that.isLoadingMore,_that.loadingMoreError);case CommentsFailure() when failure != null:
return failure(_that.message,_that.sortOrder);case _:
  return null;

}
}

}

/// @nodoc


class CommentsLoading implements CommentsState {
  const CommentsLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentsLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommentsState.loading()';
}


}




/// @nodoc


class CommentsSuccess implements CommentsState {
  const CommentsSuccess({required final  List<CommentEntity> comments, required this.sortOrder, required this.hasMore, required this.currentPage, this.isLoadingMore = false, this.loadingMoreError}): _comments = comments;
  

 final  List<CommentEntity> _comments;
 List<CommentEntity> get comments {
  if (_comments is EqualUnmodifiableListView) return _comments;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_comments);
}

 final  CommentSortOrder sortOrder;
 final  bool hasMore;
 final  int currentPage;
@JsonKey() final  bool isLoadingMore;
 final  String? loadingMoreError;

/// Create a copy of CommentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentsSuccessCopyWith<CommentsSuccess> get copyWith => _$CommentsSuccessCopyWithImpl<CommentsSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentsSuccess&&const DeepCollectionEquality().equals(other._comments, _comments)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.loadingMoreError, loadingMoreError) || other.loadingMoreError == loadingMoreError));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_comments),sortOrder,hasMore,currentPage,isLoadingMore,loadingMoreError);

@override
String toString() {
  return 'CommentsState.success(comments: $comments, sortOrder: $sortOrder, hasMore: $hasMore, currentPage: $currentPage, isLoadingMore: $isLoadingMore, loadingMoreError: $loadingMoreError)';
}


}

/// @nodoc
abstract mixin class $CommentsSuccessCopyWith<$Res> implements $CommentsStateCopyWith<$Res> {
  factory $CommentsSuccessCopyWith(CommentsSuccess value, $Res Function(CommentsSuccess) _then) = _$CommentsSuccessCopyWithImpl;
@useResult
$Res call({
 List<CommentEntity> comments, CommentSortOrder sortOrder, bool hasMore, int currentPage, bool isLoadingMore, String? loadingMoreError
});




}
/// @nodoc
class _$CommentsSuccessCopyWithImpl<$Res>
    implements $CommentsSuccessCopyWith<$Res> {
  _$CommentsSuccessCopyWithImpl(this._self, this._then);

  final CommentsSuccess _self;
  final $Res Function(CommentsSuccess) _then;

/// Create a copy of CommentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? comments = null,Object? sortOrder = null,Object? hasMore = null,Object? currentPage = null,Object? isLoadingMore = null,Object? loadingMoreError = freezed,}) {
  return _then(CommentsSuccess(
comments: null == comments ? _self._comments : comments // ignore: cast_nullable_to_non_nullable
as List<CommentEntity>,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as CommentSortOrder,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,loadingMoreError: freezed == loadingMoreError ? _self.loadingMoreError : loadingMoreError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CommentsFailure implements CommentsState {
  const CommentsFailure({required this.message, required this.sortOrder});
  

 final  String message;
 final  CommentSortOrder sortOrder;

/// Create a copy of CommentsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentsFailureCopyWith<CommentsFailure> get copyWith => _$CommentsFailureCopyWithImpl<CommentsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentsFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.sortOrder, sortOrder) || other.sortOrder == sortOrder));
}


@override
int get hashCode => Object.hash(runtimeType,message,sortOrder);

@override
String toString() {
  return 'CommentsState.failure(message: $message, sortOrder: $sortOrder)';
}


}

/// @nodoc
abstract mixin class $CommentsFailureCopyWith<$Res> implements $CommentsStateCopyWith<$Res> {
  factory $CommentsFailureCopyWith(CommentsFailure value, $Res Function(CommentsFailure) _then) = _$CommentsFailureCopyWithImpl;
@useResult
$Res call({
 String message, CommentSortOrder sortOrder
});




}
/// @nodoc
class _$CommentsFailureCopyWithImpl<$Res>
    implements $CommentsFailureCopyWith<$Res> {
  _$CommentsFailureCopyWithImpl(this._self, this._then);

  final CommentsFailure _self;
  final $Res Function(CommentsFailure) _then;

/// Create a copy of CommentsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? sortOrder = null,}) {
  return _then(CommentsFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,sortOrder: null == sortOrder ? _self.sortOrder : sortOrder // ignore: cast_nullable_to_non_nullable
as CommentSortOrder,
  ));
}


}

// dart format on
