// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_replies_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommentRepliesEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentRepliesEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommentRepliesEvent()';
}


}

/// @nodoc
class $CommentRepliesEventCopyWith<$Res>  {
$CommentRepliesEventCopyWith(CommentRepliesEvent _, $Res Function(CommentRepliesEvent) __);
}


/// Adds pattern-matching-related methods to [CommentRepliesEvent].
extension CommentRepliesEventPatterns on CommentRepliesEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchInitialReplies value)?  fetchInitial,TResult Function( FetchMoreReplies value)?  fetchMore,TResult Function( _ReplyAdded value)?  replyAdded,TResult Function( _ReplyRemoved value)?  replyRemoved,TResult Function( _ReplyReplaced value)?  replyReplaced,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchInitialReplies() when fetchInitial != null:
return fetchInitial(_that);case FetchMoreReplies() when fetchMore != null:
return fetchMore(_that);case _ReplyAdded() when replyAdded != null:
return replyAdded(_that);case _ReplyRemoved() when replyRemoved != null:
return replyRemoved(_that);case _ReplyReplaced() when replyReplaced != null:
return replyReplaced(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchInitialReplies value)  fetchInitial,required TResult Function( FetchMoreReplies value)  fetchMore,required TResult Function( _ReplyAdded value)  replyAdded,required TResult Function( _ReplyRemoved value)  replyRemoved,required TResult Function( _ReplyReplaced value)  replyReplaced,}){
final _that = this;
switch (_that) {
case FetchInitialReplies():
return fetchInitial(_that);case FetchMoreReplies():
return fetchMore(_that);case _ReplyAdded():
return replyAdded(_that);case _ReplyRemoved():
return replyRemoved(_that);case _ReplyReplaced():
return replyReplaced(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchInitialReplies value)?  fetchInitial,TResult? Function( FetchMoreReplies value)?  fetchMore,TResult? Function( _ReplyAdded value)?  replyAdded,TResult? Function( _ReplyRemoved value)?  replyRemoved,TResult? Function( _ReplyReplaced value)?  replyReplaced,}){
final _that = this;
switch (_that) {
case FetchInitialReplies() when fetchInitial != null:
return fetchInitial(_that);case FetchMoreReplies() when fetchMore != null:
return fetchMore(_that);case _ReplyAdded() when replyAdded != null:
return replyAdded(_that);case _ReplyRemoved() when replyRemoved != null:
return replyRemoved(_that);case _ReplyReplaced() when replyReplaced != null:
return replyReplaced(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String parentId)?  fetchInitial,TResult Function()?  fetchMore,TResult Function( CommentEntity reply)?  replyAdded,TResult Function( String replyId)?  replyRemoved,TResult Function( CommentEntity reply)?  replyReplaced,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchInitialReplies() when fetchInitial != null:
return fetchInitial(_that.parentId);case FetchMoreReplies() when fetchMore != null:
return fetchMore();case _ReplyAdded() when replyAdded != null:
return replyAdded(_that.reply);case _ReplyRemoved() when replyRemoved != null:
return replyRemoved(_that.replyId);case _ReplyReplaced() when replyReplaced != null:
return replyReplaced(_that.reply);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String parentId)  fetchInitial,required TResult Function()  fetchMore,required TResult Function( CommentEntity reply)  replyAdded,required TResult Function( String replyId)  replyRemoved,required TResult Function( CommentEntity reply)  replyReplaced,}) {final _that = this;
switch (_that) {
case FetchInitialReplies():
return fetchInitial(_that.parentId);case FetchMoreReplies():
return fetchMore();case _ReplyAdded():
return replyAdded(_that.reply);case _ReplyRemoved():
return replyRemoved(_that.replyId);case _ReplyReplaced():
return replyReplaced(_that.reply);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String parentId)?  fetchInitial,TResult? Function()?  fetchMore,TResult? Function( CommentEntity reply)?  replyAdded,TResult? Function( String replyId)?  replyRemoved,TResult? Function( CommentEntity reply)?  replyReplaced,}) {final _that = this;
switch (_that) {
case FetchInitialReplies() when fetchInitial != null:
return fetchInitial(_that.parentId);case FetchMoreReplies() when fetchMore != null:
return fetchMore();case _ReplyAdded() when replyAdded != null:
return replyAdded(_that.reply);case _ReplyRemoved() when replyRemoved != null:
return replyRemoved(_that.replyId);case _ReplyReplaced() when replyReplaced != null:
return replyReplaced(_that.reply);case _:
  return null;

}
}

}

/// @nodoc


class FetchInitialReplies implements CommentRepliesEvent {
  const FetchInitialReplies({required this.parentId});
  

 final  String parentId;

/// Create a copy of CommentRepliesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchInitialRepliesCopyWith<FetchInitialReplies> get copyWith => _$FetchInitialRepliesCopyWithImpl<FetchInitialReplies>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchInitialReplies&&(identical(other.parentId, parentId) || other.parentId == parentId));
}


@override
int get hashCode => Object.hash(runtimeType,parentId);

@override
String toString() {
  return 'CommentRepliesEvent.fetchInitial(parentId: $parentId)';
}


}

/// @nodoc
abstract mixin class $FetchInitialRepliesCopyWith<$Res> implements $CommentRepliesEventCopyWith<$Res> {
  factory $FetchInitialRepliesCopyWith(FetchInitialReplies value, $Res Function(FetchInitialReplies) _then) = _$FetchInitialRepliesCopyWithImpl;
@useResult
$Res call({
 String parentId
});




}
/// @nodoc
class _$FetchInitialRepliesCopyWithImpl<$Res>
    implements $FetchInitialRepliesCopyWith<$Res> {
  _$FetchInitialRepliesCopyWithImpl(this._self, this._then);

  final FetchInitialReplies _self;
  final $Res Function(FetchInitialReplies) _then;

/// Create a copy of CommentRepliesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? parentId = null,}) {
  return _then(FetchInitialReplies(
parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class FetchMoreReplies implements CommentRepliesEvent {
  const FetchMoreReplies();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchMoreReplies);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommentRepliesEvent.fetchMore()';
}


}




/// @nodoc


class _ReplyAdded implements CommentRepliesEvent {
  const _ReplyAdded(this.reply);
  

 final  CommentEntity reply;

/// Create a copy of CommentRepliesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReplyAddedCopyWith<_ReplyAdded> get copyWith => __$ReplyAddedCopyWithImpl<_ReplyAdded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReplyAdded&&(identical(other.reply, reply) || other.reply == reply));
}


@override
int get hashCode => Object.hash(runtimeType,reply);

@override
String toString() {
  return 'CommentRepliesEvent.replyAdded(reply: $reply)';
}


}

/// @nodoc
abstract mixin class _$ReplyAddedCopyWith<$Res> implements $CommentRepliesEventCopyWith<$Res> {
  factory _$ReplyAddedCopyWith(_ReplyAdded value, $Res Function(_ReplyAdded) _then) = __$ReplyAddedCopyWithImpl;
@useResult
$Res call({
 CommentEntity reply
});




}
/// @nodoc
class __$ReplyAddedCopyWithImpl<$Res>
    implements _$ReplyAddedCopyWith<$Res> {
  __$ReplyAddedCopyWithImpl(this._self, this._then);

  final _ReplyAdded _self;
  final $Res Function(_ReplyAdded) _then;

/// Create a copy of CommentRepliesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reply = null,}) {
  return _then(_ReplyAdded(
null == reply ? _self.reply : reply // ignore: cast_nullable_to_non_nullable
as CommentEntity,
  ));
}


}

/// @nodoc


class _ReplyRemoved implements CommentRepliesEvent {
  const _ReplyRemoved(this.replyId);
  

 final  String replyId;

/// Create a copy of CommentRepliesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReplyRemovedCopyWith<_ReplyRemoved> get copyWith => __$ReplyRemovedCopyWithImpl<_ReplyRemoved>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReplyRemoved&&(identical(other.replyId, replyId) || other.replyId == replyId));
}


@override
int get hashCode => Object.hash(runtimeType,replyId);

@override
String toString() {
  return 'CommentRepliesEvent.replyRemoved(replyId: $replyId)';
}


}

/// @nodoc
abstract mixin class _$ReplyRemovedCopyWith<$Res> implements $CommentRepliesEventCopyWith<$Res> {
  factory _$ReplyRemovedCopyWith(_ReplyRemoved value, $Res Function(_ReplyRemoved) _then) = __$ReplyRemovedCopyWithImpl;
@useResult
$Res call({
 String replyId
});




}
/// @nodoc
class __$ReplyRemovedCopyWithImpl<$Res>
    implements _$ReplyRemovedCopyWith<$Res> {
  __$ReplyRemovedCopyWithImpl(this._self, this._then);

  final _ReplyRemoved _self;
  final $Res Function(_ReplyRemoved) _then;

/// Create a copy of CommentRepliesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? replyId = null,}) {
  return _then(_ReplyRemoved(
null == replyId ? _self.replyId : replyId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _ReplyReplaced implements CommentRepliesEvent {
  const _ReplyReplaced(this.reply);
  

 final  CommentEntity reply;

/// Create a copy of CommentRepliesEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReplyReplacedCopyWith<_ReplyReplaced> get copyWith => __$ReplyReplacedCopyWithImpl<_ReplyReplaced>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReplyReplaced&&(identical(other.reply, reply) || other.reply == reply));
}


@override
int get hashCode => Object.hash(runtimeType,reply);

@override
String toString() {
  return 'CommentRepliesEvent.replyReplaced(reply: $reply)';
}


}

/// @nodoc
abstract mixin class _$ReplyReplacedCopyWith<$Res> implements $CommentRepliesEventCopyWith<$Res> {
  factory _$ReplyReplacedCopyWith(_ReplyReplaced value, $Res Function(_ReplyReplaced) _then) = __$ReplyReplacedCopyWithImpl;
@useResult
$Res call({
 CommentEntity reply
});




}
/// @nodoc
class __$ReplyReplacedCopyWithImpl<$Res>
    implements _$ReplyReplacedCopyWith<$Res> {
  __$ReplyReplacedCopyWithImpl(this._self, this._then);

  final _ReplyReplaced _self;
  final $Res Function(_ReplyReplaced) _then;

/// Create a copy of CommentRepliesEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? reply = null,}) {
  return _then(_ReplyReplaced(
null == reply ? _self.reply : reply // ignore: cast_nullable_to_non_nullable
as CommentEntity,
  ));
}


}

/// @nodoc
mixin _$CommentRepliesState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentRepliesState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommentRepliesState()';
}


}

/// @nodoc
class $CommentRepliesStateCopyWith<$Res>  {
$CommentRepliesStateCopyWith(CommentRepliesState _, $Res Function(CommentRepliesState) __);
}


/// Adds pattern-matching-related methods to [CommentRepliesState].
extension CommentRepliesStatePatterns on CommentRepliesState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( CommentRepliesLoading value)?  loading,TResult Function( CommentRepliesSuccess value)?  success,TResult Function( CommentRepliesFailure value)?  failure,required TResult orElse(),}){
final _that = this;
switch (_that) {
case CommentRepliesLoading() when loading != null:
return loading(_that);case CommentRepliesSuccess() when success != null:
return success(_that);case CommentRepliesFailure() when failure != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( CommentRepliesLoading value)  loading,required TResult Function( CommentRepliesSuccess value)  success,required TResult Function( CommentRepliesFailure value)  failure,}){
final _that = this;
switch (_that) {
case CommentRepliesLoading():
return loading(_that);case CommentRepliesSuccess():
return success(_that);case CommentRepliesFailure():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( CommentRepliesLoading value)?  loading,TResult? Function( CommentRepliesSuccess value)?  success,TResult? Function( CommentRepliesFailure value)?  failure,}){
final _that = this;
switch (_that) {
case CommentRepliesLoading() when loading != null:
return loading(_that);case CommentRepliesSuccess() when success != null:
return success(_that);case CommentRepliesFailure() when failure != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( String parentId,  List<CommentEntity> replies,  bool hasMore,  int currentPage,  bool isLoadingMore,  String? loadingMoreError)?  success,TResult Function( String message)?  failure,required TResult orElse(),}) {final _that = this;
switch (_that) {
case CommentRepliesLoading() when loading != null:
return loading();case CommentRepliesSuccess() when success != null:
return success(_that.parentId,_that.replies,_that.hasMore,_that.currentPage,_that.isLoadingMore,_that.loadingMoreError);case CommentRepliesFailure() when failure != null:
return failure(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( String parentId,  List<CommentEntity> replies,  bool hasMore,  int currentPage,  bool isLoadingMore,  String? loadingMoreError)  success,required TResult Function( String message)  failure,}) {final _that = this;
switch (_that) {
case CommentRepliesLoading():
return loading();case CommentRepliesSuccess():
return success(_that.parentId,_that.replies,_that.hasMore,_that.currentPage,_that.isLoadingMore,_that.loadingMoreError);case CommentRepliesFailure():
return failure(_that.message);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( String parentId,  List<CommentEntity> replies,  bool hasMore,  int currentPage,  bool isLoadingMore,  String? loadingMoreError)?  success,TResult? Function( String message)?  failure,}) {final _that = this;
switch (_that) {
case CommentRepliesLoading() when loading != null:
return loading();case CommentRepliesSuccess() when success != null:
return success(_that.parentId,_that.replies,_that.hasMore,_that.currentPage,_that.isLoadingMore,_that.loadingMoreError);case CommentRepliesFailure() when failure != null:
return failure(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class CommentRepliesLoading implements CommentRepliesState {
  const CommentRepliesLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentRepliesLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CommentRepliesState.loading()';
}


}




/// @nodoc


class CommentRepliesSuccess implements CommentRepliesState {
  const CommentRepliesSuccess({required this.parentId, required final  List<CommentEntity> replies, required this.hasMore, required this.currentPage, this.isLoadingMore = false, this.loadingMoreError}): _replies = replies;
  

 final  String parentId;
 final  List<CommentEntity> _replies;
 List<CommentEntity> get replies {
  if (_replies is EqualUnmodifiableListView) return _replies;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_replies);
}

 final  bool hasMore;
 final  int currentPage;
@JsonKey() final  bool isLoadingMore;
 final  String? loadingMoreError;

/// Create a copy of CommentRepliesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentRepliesSuccessCopyWith<CommentRepliesSuccess> get copyWith => _$CommentRepliesSuccessCopyWithImpl<CommentRepliesSuccess>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentRepliesSuccess&&(identical(other.parentId, parentId) || other.parentId == parentId)&&const DeepCollectionEquality().equals(other._replies, _replies)&&(identical(other.hasMore, hasMore) || other.hasMore == hasMore)&&(identical(other.currentPage, currentPage) || other.currentPage == currentPage)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.loadingMoreError, loadingMoreError) || other.loadingMoreError == loadingMoreError));
}


@override
int get hashCode => Object.hash(runtimeType,parentId,const DeepCollectionEquality().hash(_replies),hasMore,currentPage,isLoadingMore,loadingMoreError);

@override
String toString() {
  return 'CommentRepliesState.success(parentId: $parentId, replies: $replies, hasMore: $hasMore, currentPage: $currentPage, isLoadingMore: $isLoadingMore, loadingMoreError: $loadingMoreError)';
}


}

/// @nodoc
abstract mixin class $CommentRepliesSuccessCopyWith<$Res> implements $CommentRepliesStateCopyWith<$Res> {
  factory $CommentRepliesSuccessCopyWith(CommentRepliesSuccess value, $Res Function(CommentRepliesSuccess) _then) = _$CommentRepliesSuccessCopyWithImpl;
@useResult
$Res call({
 String parentId, List<CommentEntity> replies, bool hasMore, int currentPage, bool isLoadingMore, String? loadingMoreError
});




}
/// @nodoc
class _$CommentRepliesSuccessCopyWithImpl<$Res>
    implements $CommentRepliesSuccessCopyWith<$Res> {
  _$CommentRepliesSuccessCopyWithImpl(this._self, this._then);

  final CommentRepliesSuccess _self;
  final $Res Function(CommentRepliesSuccess) _then;

/// Create a copy of CommentRepliesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? parentId = null,Object? replies = null,Object? hasMore = null,Object? currentPage = null,Object? isLoadingMore = null,Object? loadingMoreError = freezed,}) {
  return _then(CommentRepliesSuccess(
parentId: null == parentId ? _self.parentId : parentId // ignore: cast_nullable_to_non_nullable
as String,replies: null == replies ? _self._replies : replies // ignore: cast_nullable_to_non_nullable
as List<CommentEntity>,hasMore: null == hasMore ? _self.hasMore : hasMore // ignore: cast_nullable_to_non_nullable
as bool,currentPage: null == currentPage ? _self.currentPage : currentPage // ignore: cast_nullable_to_non_nullable
as int,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,loadingMoreError: freezed == loadingMoreError ? _self.loadingMoreError : loadingMoreError // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc


class CommentRepliesFailure implements CommentRepliesState {
  const CommentRepliesFailure({required this.message});
  

 final  String message;

/// Create a copy of CommentRepliesState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentRepliesFailureCopyWith<CommentRepliesFailure> get copyWith => _$CommentRepliesFailureCopyWithImpl<CommentRepliesFailure>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentRepliesFailure&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'CommentRepliesState.failure(message: $message)';
}


}

/// @nodoc
abstract mixin class $CommentRepliesFailureCopyWith<$Res> implements $CommentRepliesStateCopyWith<$Res> {
  factory $CommentRepliesFailureCopyWith(CommentRepliesFailure value, $Res Function(CommentRepliesFailure) _then) = _$CommentRepliesFailureCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$CommentRepliesFailureCopyWithImpl<$Res>
    implements $CommentRepliesFailureCopyWith<$Res> {
  _$CommentRepliesFailureCopyWithImpl(this._self, this._then);

  final CommentRepliesFailure _self;
  final $Res Function(CommentRepliesFailure) _then;

/// Create a copy of CommentRepliesState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(CommentRepliesFailure(
message: null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
