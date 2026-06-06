// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'comment_input_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CommentInputState {

 CommentInputMode get mode; CommentEntity? get targetComment; List<ProfileEntity> get mentionSuggestions; bool get isSearchingMentions;
/// Create a copy of CommentInputState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CommentInputStateCopyWith<CommentInputState> get copyWith => _$CommentInputStateCopyWithImpl<CommentInputState>(this as CommentInputState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CommentInputState&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.targetComment, targetComment) || other.targetComment == targetComment)&&const DeepCollectionEquality().equals(other.mentionSuggestions, mentionSuggestions)&&(identical(other.isSearchingMentions, isSearchingMentions) || other.isSearchingMentions == isSearchingMentions));
}


@override
int get hashCode => Object.hash(runtimeType,mode,targetComment,const DeepCollectionEquality().hash(mentionSuggestions),isSearchingMentions);

@override
String toString() {
  return 'CommentInputState(mode: $mode, targetComment: $targetComment, mentionSuggestions: $mentionSuggestions, isSearchingMentions: $isSearchingMentions)';
}


}

/// @nodoc
abstract mixin class $CommentInputStateCopyWith<$Res>  {
  factory $CommentInputStateCopyWith(CommentInputState value, $Res Function(CommentInputState) _then) = _$CommentInputStateCopyWithImpl;
@useResult
$Res call({
 CommentInputMode mode, CommentEntity? targetComment, List<ProfileEntity> mentionSuggestions, bool isSearchingMentions
});




}
/// @nodoc
class _$CommentInputStateCopyWithImpl<$Res>
    implements $CommentInputStateCopyWith<$Res> {
  _$CommentInputStateCopyWithImpl(this._self, this._then);

  final CommentInputState _self;
  final $Res Function(CommentInputState) _then;

/// Create a copy of CommentInputState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? mode = null,Object? targetComment = freezed,Object? mentionSuggestions = null,Object? isSearchingMentions = null,}) {
  return _then(_self.copyWith(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as CommentInputMode,targetComment: freezed == targetComment ? _self.targetComment : targetComment // ignore: cast_nullable_to_non_nullable
as CommentEntity?,mentionSuggestions: null == mentionSuggestions ? _self.mentionSuggestions : mentionSuggestions // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>,isSearchingMentions: null == isSearchingMentions ? _self.isSearchingMentions : isSearchingMentions // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [CommentInputState].
extension CommentInputStatePatterns on CommentInputState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CommentInputState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CommentInputState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CommentInputState value)  $default,){
final _that = this;
switch (_that) {
case _CommentInputState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CommentInputState value)?  $default,){
final _that = this;
switch (_that) {
case _CommentInputState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( CommentInputMode mode,  CommentEntity? targetComment,  List<ProfileEntity> mentionSuggestions,  bool isSearchingMentions)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CommentInputState() when $default != null:
return $default(_that.mode,_that.targetComment,_that.mentionSuggestions,_that.isSearchingMentions);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( CommentInputMode mode,  CommentEntity? targetComment,  List<ProfileEntity> mentionSuggestions,  bool isSearchingMentions)  $default,) {final _that = this;
switch (_that) {
case _CommentInputState():
return $default(_that.mode,_that.targetComment,_that.mentionSuggestions,_that.isSearchingMentions);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( CommentInputMode mode,  CommentEntity? targetComment,  List<ProfileEntity> mentionSuggestions,  bool isSearchingMentions)?  $default,) {final _that = this;
switch (_that) {
case _CommentInputState() when $default != null:
return $default(_that.mode,_that.targetComment,_that.mentionSuggestions,_that.isSearchingMentions);case _:
  return null;

}
}

}

/// @nodoc


class _CommentInputState implements CommentInputState {
  const _CommentInputState({this.mode = CommentInputMode.create, this.targetComment, final  List<ProfileEntity> mentionSuggestions = const [], this.isSearchingMentions = false}): _mentionSuggestions = mentionSuggestions;
  

@override@JsonKey() final  CommentInputMode mode;
@override final  CommentEntity? targetComment;
 final  List<ProfileEntity> _mentionSuggestions;
@override@JsonKey() List<ProfileEntity> get mentionSuggestions {
  if (_mentionSuggestions is EqualUnmodifiableListView) return _mentionSuggestions;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_mentionSuggestions);
}

@override@JsonKey() final  bool isSearchingMentions;

/// Create a copy of CommentInputState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CommentInputStateCopyWith<_CommentInputState> get copyWith => __$CommentInputStateCopyWithImpl<_CommentInputState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CommentInputState&&(identical(other.mode, mode) || other.mode == mode)&&(identical(other.targetComment, targetComment) || other.targetComment == targetComment)&&const DeepCollectionEquality().equals(other._mentionSuggestions, _mentionSuggestions)&&(identical(other.isSearchingMentions, isSearchingMentions) || other.isSearchingMentions == isSearchingMentions));
}


@override
int get hashCode => Object.hash(runtimeType,mode,targetComment,const DeepCollectionEquality().hash(_mentionSuggestions),isSearchingMentions);

@override
String toString() {
  return 'CommentInputState(mode: $mode, targetComment: $targetComment, mentionSuggestions: $mentionSuggestions, isSearchingMentions: $isSearchingMentions)';
}


}

/// @nodoc
abstract mixin class _$CommentInputStateCopyWith<$Res> implements $CommentInputStateCopyWith<$Res> {
  factory _$CommentInputStateCopyWith(_CommentInputState value, $Res Function(_CommentInputState) _then) = __$CommentInputStateCopyWithImpl;
@override @useResult
$Res call({
 CommentInputMode mode, CommentEntity? targetComment, List<ProfileEntity> mentionSuggestions, bool isSearchingMentions
});




}
/// @nodoc
class __$CommentInputStateCopyWithImpl<$Res>
    implements _$CommentInputStateCopyWith<$Res> {
  __$CommentInputStateCopyWithImpl(this._self, this._then);

  final _CommentInputState _self;
  final $Res Function(_CommentInputState) _then;

/// Create a copy of CommentInputState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? mode = null,Object? targetComment = freezed,Object? mentionSuggestions = null,Object? isSearchingMentions = null,}) {
  return _then(_CommentInputState(
mode: null == mode ? _self.mode : mode // ignore: cast_nullable_to_non_nullable
as CommentInputMode,targetComment: freezed == targetComment ? _self.targetComment : targetComment // ignore: cast_nullable_to_non_nullable
as CommentEntity?,mentionSuggestions: null == mentionSuggestions ? _self._mentionSuggestions : mentionSuggestions // ignore: cast_nullable_to_non_nullable
as List<ProfileEntity>,isSearchingMentions: null == isSearchingMentions ? _self.isSearchingMentions : isSearchingMentions // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
