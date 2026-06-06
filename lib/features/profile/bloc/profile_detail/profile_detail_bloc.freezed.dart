// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileDetailEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDetailEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileDetailEvent()';
}


}

/// @nodoc
class $ProfileDetailEventCopyWith<$Res>  {
$ProfileDetailEventCopyWith(ProfileDetailEvent _, $Res Function(ProfileDetailEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileDetailEvent].
extension ProfileDetailEventPatterns on ProfileDetailEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _FetchProfile value)?  fetchProfile,TResult Function( _DecrementPostCount value)?  decrementPostCount,TResult Function( _FollowToggled value)?  followToggled,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _FetchProfile() when fetchProfile != null:
return fetchProfile(_that);case _DecrementPostCount() when decrementPostCount != null:
return decrementPostCount(_that);case _FollowToggled() when followToggled != null:
return followToggled(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _FetchProfile value)  fetchProfile,required TResult Function( _DecrementPostCount value)  decrementPostCount,required TResult Function( _FollowToggled value)  followToggled,}){
final _that = this;
switch (_that) {
case _FetchProfile():
return fetchProfile(_that);case _DecrementPostCount():
return decrementPostCount(_that);case _FollowToggled():
return followToggled(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _FetchProfile value)?  fetchProfile,TResult? Function( _DecrementPostCount value)?  decrementPostCount,TResult? Function( _FollowToggled value)?  followToggled,}){
final _that = this;
switch (_that) {
case _FetchProfile() when fetchProfile != null:
return fetchProfile(_that);case _DecrementPostCount() when decrementPostCount != null:
return decrementPostCount(_that);case _FollowToggled() when followToggled != null:
return followToggled(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  fetchProfile,TResult Function( String postId)?  decrementPostCount,TResult Function( bool isFollowing,  String currentUserId)?  followToggled,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _FetchProfile() when fetchProfile != null:
return fetchProfile(_that.userId);case _DecrementPostCount() when decrementPostCount != null:
return decrementPostCount(_that.postId);case _FollowToggled() when followToggled != null:
return followToggled(_that.isFollowing,_that.currentUserId);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  fetchProfile,required TResult Function( String postId)  decrementPostCount,required TResult Function( bool isFollowing,  String currentUserId)  followToggled,}) {final _that = this;
switch (_that) {
case _FetchProfile():
return fetchProfile(_that.userId);case _DecrementPostCount():
return decrementPostCount(_that.postId);case _FollowToggled():
return followToggled(_that.isFollowing,_that.currentUserId);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  fetchProfile,TResult? Function( String postId)?  decrementPostCount,TResult? Function( bool isFollowing,  String currentUserId)?  followToggled,}) {final _that = this;
switch (_that) {
case _FetchProfile() when fetchProfile != null:
return fetchProfile(_that.userId);case _DecrementPostCount() when decrementPostCount != null:
return decrementPostCount(_that.postId);case _FollowToggled() when followToggled != null:
return followToggled(_that.isFollowing,_that.currentUserId);case _:
  return null;

}
}

}

/// @nodoc


class _FetchProfile implements ProfileDetailEvent {
  const _FetchProfile(this.userId);
  

 final  String userId;

/// Create a copy of ProfileDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchProfileCopyWith<_FetchProfile> get copyWith => __$FetchProfileCopyWithImpl<_FetchProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchProfile&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'ProfileDetailEvent.fetchProfile(userId: $userId)';
}


}

/// @nodoc
abstract mixin class _$FetchProfileCopyWith<$Res> implements $ProfileDetailEventCopyWith<$Res> {
  factory _$FetchProfileCopyWith(_FetchProfile value, $Res Function(_FetchProfile) _then) = __$FetchProfileCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class __$FetchProfileCopyWithImpl<$Res>
    implements _$FetchProfileCopyWith<$Res> {
  __$FetchProfileCopyWithImpl(this._self, this._then);

  final _FetchProfile _self;
  final $Res Function(_FetchProfile) _then;

/// Create a copy of ProfileDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(_FetchProfile(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _DecrementPostCount implements ProfileDetailEvent {
  const _DecrementPostCount(this.postId);
  

 final  String postId;

/// Create a copy of ProfileDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DecrementPostCountCopyWith<_DecrementPostCount> get copyWith => __$DecrementPostCountCopyWithImpl<_DecrementPostCount>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DecrementPostCount&&(identical(other.postId, postId) || other.postId == postId));
}


@override
int get hashCode => Object.hash(runtimeType,postId);

@override
String toString() {
  return 'ProfileDetailEvent.decrementPostCount(postId: $postId)';
}


}

/// @nodoc
abstract mixin class _$DecrementPostCountCopyWith<$Res> implements $ProfileDetailEventCopyWith<$Res> {
  factory _$DecrementPostCountCopyWith(_DecrementPostCount value, $Res Function(_DecrementPostCount) _then) = __$DecrementPostCountCopyWithImpl;
@useResult
$Res call({
 String postId
});




}
/// @nodoc
class __$DecrementPostCountCopyWithImpl<$Res>
    implements _$DecrementPostCountCopyWith<$Res> {
  __$DecrementPostCountCopyWithImpl(this._self, this._then);

  final _DecrementPostCount _self;
  final $Res Function(_DecrementPostCount) _then;

/// Create a copy of ProfileDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? postId = null,}) {
  return _then(_DecrementPostCount(
null == postId ? _self.postId : postId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _FollowToggled implements ProfileDetailEvent {
  const _FollowToggled({required this.isFollowing, required this.currentUserId});
  

 final  bool isFollowing;
 final  String currentUserId;

/// Create a copy of ProfileDetailEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FollowToggledCopyWith<_FollowToggled> get copyWith => __$FollowToggledCopyWithImpl<_FollowToggled>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FollowToggled&&(identical(other.isFollowing, isFollowing) || other.isFollowing == isFollowing)&&(identical(other.currentUserId, currentUserId) || other.currentUserId == currentUserId));
}


@override
int get hashCode => Object.hash(runtimeType,isFollowing,currentUserId);

@override
String toString() {
  return 'ProfileDetailEvent.followToggled(isFollowing: $isFollowing, currentUserId: $currentUserId)';
}


}

/// @nodoc
abstract mixin class _$FollowToggledCopyWith<$Res> implements $ProfileDetailEventCopyWith<$Res> {
  factory _$FollowToggledCopyWith(_FollowToggled value, $Res Function(_FollowToggled) _then) = __$FollowToggledCopyWithImpl;
@useResult
$Res call({
 bool isFollowing, String currentUserId
});




}
/// @nodoc
class __$FollowToggledCopyWithImpl<$Res>
    implements _$FollowToggledCopyWith<$Res> {
  __$FollowToggledCopyWithImpl(this._self, this._then);

  final _FollowToggled _self;
  final $Res Function(_FollowToggled) _then;

/// Create a copy of ProfileDetailEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? isFollowing = null,Object? currentUserId = null,}) {
  return _then(_FollowToggled(
isFollowing: null == isFollowing ? _self.isFollowing : isFollowing // ignore: cast_nullable_to_non_nullable
as bool,currentUserId: null == currentUserId ? _self.currentUserId : currentUserId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc
mixin _$ProfileDetailState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileDetailState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileDetailState()';
}


}

/// @nodoc
class $ProfileDetailStateCopyWith<$Res>  {
$ProfileDetailStateCopyWith(ProfileDetailState _, $Res Function(ProfileDetailState) __);
}


/// Adds pattern-matching-related methods to [ProfileDetailState].
extension ProfileDetailStatePatterns on ProfileDetailState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( _Loading value)?  loading,TResult Function( _ProfileLoaded value)?  profileLoaded,TResult Function( _Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _ProfileLoaded() when profileLoaded != null:
return profileLoaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( _Loading value)  loading,required TResult Function( _ProfileLoaded value)  profileLoaded,required TResult Function( _Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case _Loading():
return loading(_that);case _ProfileLoaded():
return profileLoaded(_that);case _Error():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( _Loading value)?  loading,TResult? Function( _ProfileLoaded value)?  profileLoaded,TResult? Function( _Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case _Loading() when loading != null:
return loading(_that);case _ProfileLoaded() when profileLoaded != null:
return profileLoaded(_that);case _Error() when error != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( ProfileEntity profile,  bool shouldTriggerPostFetching)?  profileLoaded,TResult Function( String message)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ProfileLoaded() when profileLoaded != null:
return profileLoaded(_that.profile,_that.shouldTriggerPostFetching);case _Error() when error != null:
return error(_that.message);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( ProfileEntity profile,  bool shouldTriggerPostFetching)  profileLoaded,required TResult Function( String message)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case _Loading():
return loading();case _ProfileLoaded():
return profileLoaded(_that.profile,_that.shouldTriggerPostFetching);case _Error():
return error(_that.message);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( ProfileEntity profile,  bool shouldTriggerPostFetching)?  profileLoaded,TResult? Function( String message)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case _Loading() when loading != null:
return loading();case _ProfileLoaded() when profileLoaded != null:
return profileLoaded(_that.profile,_that.shouldTriggerPostFetching);case _Error() when error != null:
return error(_that.message);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements ProfileDetailState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileDetailState.initial()';
}


}




/// @nodoc


class _Loading implements ProfileDetailState {
  const _Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileDetailState.loading()';
}


}




/// @nodoc


class _ProfileLoaded implements ProfileDetailState {
  const _ProfileLoaded({required this.profile, this.shouldTriggerPostFetching = true});
  

 final  ProfileEntity profile;
@JsonKey() final  bool shouldTriggerPostFetching;

/// Create a copy of ProfileDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileLoadedCopyWith<_ProfileLoaded> get copyWith => __$ProfileLoadedCopyWithImpl<_ProfileLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileLoaded&&(identical(other.profile, profile) || other.profile == profile)&&(identical(other.shouldTriggerPostFetching, shouldTriggerPostFetching) || other.shouldTriggerPostFetching == shouldTriggerPostFetching));
}


@override
int get hashCode => Object.hash(runtimeType,profile,shouldTriggerPostFetching);

@override
String toString() {
  return 'ProfileDetailState.profileLoaded(profile: $profile, shouldTriggerPostFetching: $shouldTriggerPostFetching)';
}


}

/// @nodoc
abstract mixin class _$ProfileLoadedCopyWith<$Res> implements $ProfileDetailStateCopyWith<$Res> {
  factory _$ProfileLoadedCopyWith(_ProfileLoaded value, $Res Function(_ProfileLoaded) _then) = __$ProfileLoadedCopyWithImpl;
@useResult
$Res call({
 ProfileEntity profile, bool shouldTriggerPostFetching
});




}
/// @nodoc
class __$ProfileLoadedCopyWithImpl<$Res>
    implements _$ProfileLoadedCopyWith<$Res> {
  __$ProfileLoadedCopyWithImpl(this._self, this._then);

  final _ProfileLoaded _self;
  final $Res Function(_ProfileLoaded) _then;

/// Create a copy of ProfileDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? profile = null,Object? shouldTriggerPostFetching = null,}) {
  return _then(_ProfileLoaded(
profile: null == profile ? _self.profile : profile // ignore: cast_nullable_to_non_nullable
as ProfileEntity,shouldTriggerPostFetching: null == shouldTriggerPostFetching ? _self.shouldTriggerPostFetching : shouldTriggerPostFetching // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

/// @nodoc


class _Error implements ProfileDetailState {
  const _Error(this.message);
  

 final  String message;

/// Create a copy of ProfileDetailState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ErrorCopyWith<_Error> get copyWith => __$ErrorCopyWithImpl<_Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Error&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'ProfileDetailState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class _$ErrorCopyWith<$Res> implements $ProfileDetailStateCopyWith<$Res> {
  factory _$ErrorCopyWith(_Error value, $Res Function(_Error) _then) = __$ErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$ErrorCopyWithImpl<$Res>
    implements _$ErrorCopyWith<$Res> {
  __$ErrorCopyWithImpl(this._self, this._then);

  final _Error _self;
  final $Res Function(_Error) _then;

/// Create a copy of ProfileDetailState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_Error(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
