// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_actions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommentActionsEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentActionsEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommentActionsEvent()';
}


}

/// @nodoc
class $CommentActionsEventCopyWith<$Res>  {
$CommentActionsEventCopyWith(CommentActionsEvent _, $Res Function(CommentActionsEvent) __);
}


/// Adds pattern-matching-related methods to [CommentActionsEvent].
extension CommentActionsEventPatterns on CommentActionsEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CreateComment value)?  createComment,TResult Function( UpdateComment value)?  updateComment,TResult Function( DeleteComment value)?  deleteComment,TResult Function( LikeComment value)?  likeComment,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CreateComment() when createComment != null:
return createComment(_that);case UpdateComment() when updateComment != null:
return updateComment(_that);case DeleteComment() when deleteComment != null:
return deleteComment(_that);case LikeComment() when likeComment != null:
return likeComment(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CreateComment value)  createComment,required TResult Function( UpdateComment value)  updateComment,required TResult Function( DeleteComment value)  deleteComment,required TResult Function( LikeComment value)  likeComment,}){
final _that = this;
switch (_that) {
case CreateComment():
return createComment(_that);case UpdateComment():
return updateComment(_that);case DeleteComment():
return deleteComment(_that);case LikeComment():
return likeComment(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CreateComment value)?  createComment,TResult? Function( UpdateComment value)?  updateComment,TResult? Function( DeleteComment value)?  deleteComment,TResult? Function( LikeComment value)?  likeComment,}){
final _that = this;
switch (_that) {
case CreateComment() when createComment != null:
return createComment(_that);case UpdateComment() when updateComment != null:
return updateComment(_that);case DeleteComment() when deleteComment != null:
return deleteComment(_that);case LikeComment() when likeComment != null:
return likeComment(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String postId,  String body,  String? parentId,  List<String> mentionedUserIds)?  createComment,TResult Function( String commentId,  String body)?  updateComment,TResult Function( String commentId,  String? parentId)?  deleteComment,TResult Function( String commentId,  bool isLiked,  int likeCount)?  likeComment,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CreateComment() when createComment != null:
return createComment(_that.postId,_that.body,_that.parentId,_that.mentionedUserIds);case UpdateComment() when updateComment != null:
return updateComment(_that.commentId,_that.body);case DeleteComment() when deleteComment != null:
return deleteComment(_that.commentId,_that.parentId);case LikeComment() when likeComment != null:
return likeComment(_that.commentId,_that.isLiked,_that.likeCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String postId,  String body,  String? parentId,  List<String> mentionedUserIds)  createComment,required TResult Function( String commentId,  String body)  updateComment,required TResult Function( String commentId,  String? parentId)  deleteComment,required TResult Function( String commentId,  bool isLiked,  int likeCount)  likeComment,}) {final _that = this;
switch (_that) {
case CreateComment():
return createComment(_that.postId,_that.body,_that.parentId,_that.mentionedUserIds);case UpdateComment():
return updateComment(_that.commentId,_that.body);case DeleteComment():
return deleteComment(_that.commentId,_that.parentId);case LikeComment():
return likeComment(_that.commentId,_that.isLiked,_that.likeCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String postId,  String body,  String? parentId,  List<String> mentionedUserIds)?  createComment,TResult? Function( String commentId,  String body)?  updateComment,TResult? Function( String commentId,  String? parentId)?  deleteComment,TResult? Function( String commentId,  bool isLiked,  int likeCount)?  likeComment,}) {final _that = this;
switch (_that) {
case CreateComment() when createComment != null:
return createComment(_that.postId,_that.body,_that.parentId,_that.mentionedUserIds);case UpdateComment() when updateComment != null:
return updateComment(_that.commentId,_that.body);case DeleteComment() when deleteComment != null:
return deleteComment(_that.commentId,_that.parentId);case LikeComment() when likeComment != null:
return likeComment(_that.commentId,_that.isLiked,_that.likeCount);case _:
  return null;

}
}

}

/// @nodoc


class CreateComment implements CommentActionsEvent {
  const CreateComment({required this.postId, required this.body, this.parentId, final  List<String> mentionedUserIds = const []}): _mentionedUserIds = mentionedUserIds;
  

 final  String postId;
 final  String body;
 final  String? parentId;
 final  List<String> _mentionedUserIds;
@JsonKey() List<String> get mentionedUserIds {
  if (_mentionedUserIds is EqualUnmodifiableListView) return _mentionedUserIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentionedUserIds);
}


/// Create a copy of CommentActionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CreateCommentCopyWith<CreateComment> get copyWith => _$CreateCommentCopyWithImpl<CreateComment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CreateComment&&(identical(other.postId, postId) || other.postId == postId)&&(identical(other.body, body) || other.body == body)&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other._mentionedUserIds, _mentionedUserIds));
}


@override
int get hashCode => Object.hash(runtimeType,postId,body,parentId,const DeepCollectionEquality().hash(_mentionedUserIds));

@override
String toString() {
  return 'CommentActionsEvent.createComment(postId: $postId, body: $body, parentId: $parentId, mentionedUserIds: $mentionedUserIds)';
}


}

/// @nodoc
abstract mixin class $CreateCommentCopyWith<$Res> implements $CommentActionsEventCopyWith<$Res> {
  factory $CreateCommentCopyWith(CreateComment value, $Res Function(CreateComment) _then) = _$CreateCommentCopyWithImpl;
@useResult
$Res call({
 String postId, String body, String? parentId, List<String> mentionedUserIds
});




}
/// @nodoc
class _$CreateCommentCopyWithImpl<$Res>
    implements $CreateCommentCopyWith<$Res> {
  _$CreateCommentCopyWithImpl(this._self, this._then);

  final CreateComment _self;
  final $Res Function(CreateComment) _then;

/// Create a copy of CommentActionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,Object? body = null,Object? parentId = freezed,Object? mentionedUserIds = null,}) {
  return _then(CreateComment(
postId: null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,mentionedUserIds: null == mentionedUserIds ? _self._mentionedUserIds : mentionedUserIds // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

/// @nodoc


class UpdateComment implements CommentActionsEvent {
  const UpdateComment({required this.commentId, required this.body});
  

 final  String commentId;
 final  String body;

/// Create a copy of CommentActionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UpdateCommentCopyWith<UpdateComment> get copyWith => _$UpdateCommentCopyWithImpl<UpdateComment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UpdateComment&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.body, body) || other.body == body));
}


@override
int get hashCode => Object.hash(runtimeType,commentId,body);

@override
String toString() {
  return 'CommentActionsEvent.updateComment(commentId: $commentId, body: $body)';
}


}

/// @nodoc
abstract mixin class $UpdateCommentCopyWith<$Res> implements $CommentActionsEventCopyWith<$Res> {
  factory $UpdateCommentCopyWith(UpdateComment value, $Res Function(UpdateComment) _then) = _$UpdateCommentCopyWithImpl;
@useResult
$Res call({
 String commentId, String body
});




}
/// @nodoc
class _$UpdateCommentCopyWithImpl<$Res>
    implements $UpdateCommentCopyWith<$Res> {
  _$UpdateCommentCopyWithImpl(this._self, this._then);

  final UpdateComment _self;
  final $Res Function(UpdateComment) _then;

/// Create a copy of CommentActionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? commentId = null,Object? body = null,}) {
  return _then(UpdateComment(
commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,body: null == body ? _self.body : body // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DeleteComment implements CommentActionsEvent {
  const DeleteComment({required this.commentId, this.parentId});
  

 final  String commentId;
 final  String? parentId;

/// Create a copy of CommentActionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DeleteCommentCopyWith<DeleteComment> get copyWith => _$DeleteCommentCopyWithImpl<DeleteComment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DeleteComment&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.parentId, parentId) || other.parentId == parentId));
}


@override
int get hashCode => Object.hash(runtimeType,commentId,parentId);

@override
String toString() {
  return 'CommentActionsEvent.deleteComment(commentId: $commentId, parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class $DeleteCommentCopyWith<$Res> implements $CommentActionsEventCopyWith<$Res> {
  factory $DeleteCommentCopyWith(DeleteComment value, $Res Function(DeleteComment) _then) = _$DeleteCommentCopyWithImpl;
@useResult
$Res call({
 String commentId, String? parentId
});




}
/// @nodoc
class _$DeleteCommentCopyWithImpl<$Res>
    implements $DeleteCommentCopyWith<$Res> {
  _$DeleteCommentCopyWithImpl(this._self, this._then);

  final DeleteComment _self;
  final $Res Function(DeleteComment) _then;

/// Create a copy of CommentActionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? commentId = null,Object? parentId = freezed,}) {
  return _then(DeleteComment(
commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,parentId: freezed == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class LikeComment implements CommentActionsEvent {
  const LikeComment({required this.commentId, required this.isLiked, required this.likeCount});
  

 final  String commentId;
 final  bool isLiked;
 final  int likeCount;

/// Create a copy of CommentActionsEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LikeCommentCopyWith<LikeComment> get copyWith => _$LikeCommentCopyWithImpl<LikeComment>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LikeComment&&(identical(other.commentId, commentId) || other.commentId == commentId)&&(identical(other.isLiked, isLiked) || other.isLiked == isLiked)&&(identical(other.likeCount, likeCount) || other.likeCount == likeCount));
}


@override
int get hashCode => Object.hash(runtimeType,commentId,isLiked,likeCount);

@override
String toString() {
  return 'CommentActionsEvent.likeComment(commentId: $commentId, isLiked: $isLiked, likeCount: $likeCount)';
}


}

/// @nodoc
abstract mixin class $LikeCommentCopyWith<$Res> implements $CommentActionsEventCopyWith<$Res> {
  factory $LikeCommentCopyWith(LikeComment value, $Res Function(LikeComment) _then) = _$LikeCommentCopyWithImpl;
@useResult
$Res call({
 String commentId, bool isLiked, int likeCount
});




}
/// @nodoc
class _$LikeCommentCopyWithImpl<$Res>
    implements $LikeCommentCopyWith<$Res> {
  _$LikeCommentCopyWithImpl(this._self, this._then);

  final LikeComment _self;
  final $Res Function(LikeComment) _then;

/// Create a copy of CommentActionsEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? commentId = null,Object? isLiked = null,Object? likeCount = null,}) {
  return _then(LikeComment(
commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,isLiked: null == isLiked ? _self.isLiked : isLiked // ignore: cast_nullable_to_non_nullable
as bool,likeCount: null == likeCount ? _self.likeCount : likeCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

/// @nodoc
mixin _$CommentActionsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentActionsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommentActionsState()';
}


}

/// @nodoc
class $CommentActionsStateCopyWith<$Res>  {
$CommentActionsStateCopyWith(CommentActionsState _, $Res Function(CommentActionsState) __);
}


/// Adds pattern-matching-related methods to [CommentActionsState].
extension CommentActionsStatePatterns on CommentActionsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CommentActionsIdle value)?  idle,TResult Function( CommentActionsSubmitting value)?  submitting,TResult Function( CommentActionsSubmitted value)?  submitted,TResult Function( CommentActionsMutating value)?  mutating,TResult Function( CommentActionsMutationSuccess value)?  mutationSuccess,TResult Function( CommentActionsFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CommentActionsIdle() when idle != null:
return idle(_that);case CommentActionsSubmitting() when submitting != null:
return submitting(_that);case CommentActionsSubmitted() when submitted != null:
return submitted(_that);case CommentActionsMutating() when mutating != null:
return mutating(_that);case CommentActionsMutationSuccess() when mutationSuccess != null:
return mutationSuccess(_that);case CommentActionsFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CommentActionsIdle value)  idle,required TResult Function( CommentActionsSubmitting value)  submitting,required TResult Function( CommentActionsSubmitted value)  submitted,required TResult Function( CommentActionsMutating value)  mutating,required TResult Function( CommentActionsMutationSuccess value)  mutationSuccess,required TResult Function( CommentActionsFailure value)  failure,}){
final _that = this;
switch (_that) {
case CommentActionsIdle():
return idle(_that);case CommentActionsSubmitting():
return submitting(_that);case CommentActionsSubmitted():
return submitted(_that);case CommentActionsMutating():
return mutating(_that);case CommentActionsMutationSuccess():
return mutationSuccess(_that);case CommentActionsFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CommentActionsIdle value)?  idle,TResult? Function( CommentActionsSubmitting value)?  submitting,TResult? Function( CommentActionsSubmitted value)?  submitted,TResult? Function( CommentActionsMutating value)?  mutating,TResult? Function( CommentActionsMutationSuccess value)?  mutationSuccess,TResult? Function( CommentActionsFailure value)?  failure,}){
final _that = this;
switch (_that) {
case CommentActionsIdle() when idle != null:
return idle(_that);case CommentActionsSubmitting() when submitting != null:
return submitting(_that);case CommentActionsSubmitted() when submitted != null:
return submitted(_that);case CommentActionsMutating() when mutating != null:
return mutating(_that);case CommentActionsMutationSuccess() when mutationSuccess != null:
return mutationSuccess(_that);case CommentActionsFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  idle,TResult Function()?  submitting,TResult Function( CommentEntity comment)?  submitted,TResult Function( String commentId)?  mutating,TResult Function()?  mutationSuccess,TResult Function( String message,  String? commentId)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CommentActionsIdle() when idle != null:
return idle();case CommentActionsSubmitting() when submitting != null:
return submitting();case CommentActionsSubmitted() when submitted != null:
return submitted(_that.comment);case CommentActionsMutating() when mutating != null:
return mutating(_that.commentId);case CommentActionsMutationSuccess() when mutationSuccess != null:
return mutationSuccess();case CommentActionsFailure() when failure != null:
return failure(_that.message,_that.commentId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  idle,required TResult Function()  submitting,required TResult Function( CommentEntity comment)  submitted,required TResult Function( String commentId)  mutating,required TResult Function()  mutationSuccess,required TResult Function( String message,  String? commentId)  failure,}) {final _that = this;
switch (_that) {
case CommentActionsIdle():
return idle();case CommentActionsSubmitting():
return submitting();case CommentActionsSubmitted():
return submitted(_that.comment);case CommentActionsMutating():
return mutating(_that.commentId);case CommentActionsMutationSuccess():
return mutationSuccess();case CommentActionsFailure():
return failure(_that.message,_that.commentId);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  idle,TResult? Function()?  submitting,TResult? Function( CommentEntity comment)?  submitted,TResult? Function( String commentId)?  mutating,TResult? Function()?  mutationSuccess,TResult? Function( String message,  String? commentId)?  failure,}) {final _that = this;
switch (_that) {
case CommentActionsIdle() when idle != null:
return idle();case CommentActionsSubmitting() when submitting != null:
return submitting();case CommentActionsSubmitted() when submitted != null:
return submitted(_that.comment);case CommentActionsMutating() when mutating != null:
return mutating(_that.commentId);case CommentActionsMutationSuccess() when mutationSuccess != null:
return mutationSuccess();case CommentActionsFailure() when failure != null:
return failure(_that.message,_that.commentId);case _:
  return null;

}
}

}

/// @nodoc


class CommentActionsIdle implements CommentActionsState {
  const CommentActionsIdle();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentActionsIdle);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommentActionsState.idle()';
}


}




/// @nodoc


class CommentActionsSubmitting implements CommentActionsState {
  const CommentActionsSubmitting();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentActionsSubmitting);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommentActionsState.submitting()';
}


}




/// @nodoc


class CommentActionsSubmitted implements CommentActionsState {
  const CommentActionsSubmitted(this.comment);
  

 final  CommentEntity comment;

/// Create a copy of CommentActionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentActionsSubmittedCopyWith<CommentActionsSubmitted> get copyWith => _$CommentActionsSubmittedCopyWithImpl<CommentActionsSubmitted>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentActionsSubmitted&&(identical(other.comment, comment) || other.comment == comment));
}


@override
int get hashCode => Object.hash(runtimeType,comment);

@override
String toString() {
  return 'CommentActionsState.submitted(comment: $comment)';
}


}

/// @nodoc
abstract mixin class $CommentActionsSubmittedCopyWith<$Res> implements $CommentActionsStateCopyWith<$Res> {
  factory $CommentActionsSubmittedCopyWith(CommentActionsSubmitted value, $Res Function(CommentActionsSubmitted) _then) = _$CommentActionsSubmittedCopyWithImpl;
@useResult
$Res call({
 CommentEntity comment
});




}
/// @nodoc
class _$CommentActionsSubmittedCopyWithImpl<$Res>
    implements $CommentActionsSubmittedCopyWith<$Res> {
  _$CommentActionsSubmittedCopyWithImpl(this._self, this._then);

  final CommentActionsSubmitted _self;
  final $Res Function(CommentActionsSubmitted) _then;

/// Create a copy of CommentActionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? comment = null,}) {
  return _then(CommentActionsSubmitted(
null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as CommentEntity,
  ));
}


}

/// @nodoc


class CommentActionsMutating implements CommentActionsState {
  const CommentActionsMutating({required this.commentId});
  

 final  String commentId;

/// Create a copy of CommentActionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentActionsMutatingCopyWith<CommentActionsMutating> get copyWith => _$CommentActionsMutatingCopyWithImpl<CommentActionsMutating>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentActionsMutating&&(identical(other.commentId, commentId) || other.commentId == commentId));
}


@override
int get hashCode => Object.hash(runtimeType,commentId);

@override
String toString() {
  return 'CommentActionsState.mutating(commentId: $commentId)';
}


}

/// @nodoc
abstract mixin class $CommentActionsMutatingCopyWith<$Res> implements $CommentActionsStateCopyWith<$Res> {
  factory $CommentActionsMutatingCopyWith(CommentActionsMutating value, $Res Function(CommentActionsMutating) _then) = _$CommentActionsMutatingCopyWithImpl;
@useResult
$Res call({
 String commentId
});




}
/// @nodoc
class _$CommentActionsMutatingCopyWithImpl<$Res>
    implements $CommentActionsMutatingCopyWith<$Res> {
  _$CommentActionsMutatingCopyWithImpl(this._self, this._then);

  final CommentActionsMutating _self;
  final $Res Function(CommentActionsMutating) _then;

/// Create a copy of CommentActionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? commentId = null,}) {
  return _then(CommentActionsMutating(
commentId: null == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class CommentActionsMutationSuccess implements CommentActionsState {
  const CommentActionsMutationSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentActionsMutationSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommentActionsState.mutationSuccess()';
}


}




/// @nodoc


class CommentActionsFailure implements CommentActionsState {
  const CommentActionsFailure({required this.message, this.commentId});
  

 final  String message;
 final  String? commentId;

/// Create a copy of CommentActionsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentActionsFailureCopyWith<CommentActionsFailure> get copyWith => _$CommentActionsFailureCopyWithImpl<CommentActionsFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentActionsFailure&&(identical(other.message, message) || other.message == message)&&(identical(other.commentId, commentId) || other.commentId == commentId));
}


@override
int get hashCode => Object.hash(runtimeType,message,commentId);

@override
String toString() {
  return 'CommentActionsState.failure(message: $message, commentId: $commentId)';
}


}

/// @nodoc
abstract mixin class $CommentActionsFailureCopyWith<$Res> implements $CommentActionsStateCopyWith<$Res> {
  factory $CommentActionsFailureCopyWith(CommentActionsFailure value, $Res Function(CommentActionsFailure) _then) = _$CommentActionsFailureCopyWithImpl;
@useResult
$Res call({
 String message, String? commentId
});




}
/// @nodoc
class _$CommentActionsFailureCopyWithImpl<$Res>
    implements $CommentActionsFailureCopyWith<$Res> {
  _$CommentActionsFailureCopyWithImpl(this._self, this._then);

  final CommentActionsFailure _self;
  final $Res Function(CommentActionsFailure) _then;

/// Create a copy of CommentActionsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,Object? commentId = freezed,}) {
  return _then(CommentActionsFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,commentId: freezed == commentId ? _self.commentId : commentId // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
