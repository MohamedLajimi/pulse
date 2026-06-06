// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_setup_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ProfileSetupEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSetupEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'ProfileSetupEvent()';
}


}

/// @nodoc
class $ProfileSetupEventCopyWith<$Res>  {
$ProfileSetupEventCopyWith(ProfileSetupEvent _, $Res Function(ProfileSetupEvent) __);
}


/// Adds pattern-matching-related methods to [ProfileSetupEvent].
extension ProfileSetupEventPatterns on ProfileSetupEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _AvatarChanged value)?  avatarChanged,TResult Function( _UsernameChanged value)?  usernameChanged,TResult Function( _SubmitProfileSetup value)?  submitProfileSetup,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AvatarChanged() when avatarChanged != null:
return avatarChanged(_that);case _UsernameChanged() when usernameChanged != null:
return usernameChanged(_that);case _SubmitProfileSetup() when submitProfileSetup != null:
return submitProfileSetup(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _AvatarChanged value)  avatarChanged,required TResult Function( _UsernameChanged value)  usernameChanged,required TResult Function( _SubmitProfileSetup value)  submitProfileSetup,}){
final _that = this;
switch (_that) {
case _AvatarChanged():
return avatarChanged(_that);case _UsernameChanged():
return usernameChanged(_that);case _SubmitProfileSetup():
return submitProfileSetup(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _AvatarChanged value)?  avatarChanged,TResult? Function( _UsernameChanged value)?  usernameChanged,TResult? Function( _SubmitProfileSetup value)?  submitProfileSetup,}){
final _that = this;
switch (_that) {
case _AvatarChanged() when avatarChanged != null:
return avatarChanged(_that);case _UsernameChanged() when usernameChanged != null:
return usernameChanged(_that);case _SubmitProfileSetup() when submitProfileSetup != null:
return submitProfileSetup(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( File? file)?  avatarChanged,TResult Function( String username)?  usernameChanged,TResult Function( String displayName,  String? bio)?  submitProfileSetup,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AvatarChanged() when avatarChanged != null:
return avatarChanged(_that.file);case _UsernameChanged() when usernameChanged != null:
return usernameChanged(_that.username);case _SubmitProfileSetup() when submitProfileSetup != null:
return submitProfileSetup(_that.displayName,_that.bio);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( File? file)  avatarChanged,required TResult Function( String username)  usernameChanged,required TResult Function( String displayName,  String? bio)  submitProfileSetup,}) {final _that = this;
switch (_that) {
case _AvatarChanged():
return avatarChanged(_that.file);case _UsernameChanged():
return usernameChanged(_that.username);case _SubmitProfileSetup():
return submitProfileSetup(_that.displayName,_that.bio);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( File? file)?  avatarChanged,TResult? Function( String username)?  usernameChanged,TResult? Function( String displayName,  String? bio)?  submitProfileSetup,}) {final _that = this;
switch (_that) {
case _AvatarChanged() when avatarChanged != null:
return avatarChanged(_that.file);case _UsernameChanged() when usernameChanged != null:
return usernameChanged(_that.username);case _SubmitProfileSetup() when submitProfileSetup != null:
return submitProfileSetup(_that.displayName,_that.bio);case _:
  return null;

}
}

}

/// @nodoc


class _AvatarChanged implements ProfileSetupEvent {
  const _AvatarChanged(this.file);
  

 final  File? file;

/// Create a copy of ProfileSetupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AvatarChangedCopyWith<_AvatarChanged> get copyWith => __$AvatarChangedCopyWithImpl<_AvatarChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _AvatarChanged&&(identical(other.file, file) || other.file == file));
}


@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'ProfileSetupEvent.avatarChanged(file: $file)';
}


}

/// @nodoc
abstract mixin class _$AvatarChangedCopyWith<$Res> implements $ProfileSetupEventCopyWith<$Res> {
  factory _$AvatarChangedCopyWith(_AvatarChanged value, $Res Function(_AvatarChanged) _then) = __$AvatarChangedCopyWithImpl;
@useResult
$Res call({
 File? file
});




}
/// @nodoc
class __$AvatarChangedCopyWithImpl<$Res>
    implements _$AvatarChangedCopyWith<$Res> {
  __$AvatarChangedCopyWithImpl(this._self, this._then);

  final _AvatarChanged _self;
  final $Res Function(_AvatarChanged) _then;

/// Create a copy of ProfileSetupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = freezed,}) {
  return _then(_AvatarChanged(
freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

/// @nodoc


class _UsernameChanged implements ProfileSetupEvent {
  const _UsernameChanged(this.username);
  

 final  String username;

/// Create a copy of ProfileSetupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UsernameChangedCopyWith<_UsernameChanged> get copyWith => __$UsernameChangedCopyWithImpl<_UsernameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UsernameChanged&&(identical(other.username, username) || other.username == username));
}


@override
int get hashCode => Object.hash(runtimeType,username);

@override
String toString() {
  return 'ProfileSetupEvent.usernameChanged(username: $username)';
}


}

/// @nodoc
abstract mixin class _$UsernameChangedCopyWith<$Res> implements $ProfileSetupEventCopyWith<$Res> {
  factory _$UsernameChangedCopyWith(_UsernameChanged value, $Res Function(_UsernameChanged) _then) = __$UsernameChangedCopyWithImpl;
@useResult
$Res call({
 String username
});




}
/// @nodoc
class __$UsernameChangedCopyWithImpl<$Res>
    implements _$UsernameChangedCopyWith<$Res> {
  __$UsernameChangedCopyWithImpl(this._self, this._then);

  final _UsernameChanged _self;
  final $Res Function(_UsernameChanged) _then;

/// Create a copy of ProfileSetupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? username = null,}) {
  return _then(_UsernameChanged(
null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _SubmitProfileSetup implements ProfileSetupEvent {
  const _SubmitProfileSetup({required this.displayName, this.bio});
  

 final  String displayName;
 final  String? bio;

/// Create a copy of ProfileSetupEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SubmitProfileSetupCopyWith<_SubmitProfileSetup> get copyWith => __$SubmitProfileSetupCopyWithImpl<_SubmitProfileSetup>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SubmitProfileSetup&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.bio, bio) || other.bio == bio));
}


@override
int get hashCode => Object.hash(runtimeType,displayName,bio);

@override
String toString() {
  return 'ProfileSetupEvent.submitProfileSetup(displayName: $displayName, bio: $bio)';
}


}

/// @nodoc
abstract mixin class _$SubmitProfileSetupCopyWith<$Res> implements $ProfileSetupEventCopyWith<$Res> {
  factory _$SubmitProfileSetupCopyWith(_SubmitProfileSetup value, $Res Function(_SubmitProfileSetup) _then) = __$SubmitProfileSetupCopyWithImpl;
@useResult
$Res call({
 String displayName, String? bio
});




}
/// @nodoc
class __$SubmitProfileSetupCopyWithImpl<$Res>
    implements _$SubmitProfileSetupCopyWith<$Res> {
  __$SubmitProfileSetupCopyWithImpl(this._self, this._then);

  final _SubmitProfileSetup _self;
  final $Res Function(_SubmitProfileSetup) _then;

/// Create a copy of ProfileSetupEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? displayName = null,Object? bio = freezed,}) {
  return _then(_SubmitProfileSetup(
displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,bio: freezed == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

/// @nodoc
mixin _$ProfileSetupState {

 FormStatus get status; File? get avatar; bool get isAvatarUploading; String? get uploadedAvatarUrl; String get username; bool get isCheckingUsername; bool get isUsernameAvailable; String? get errorMessage;
/// Create a copy of ProfileSetupState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileSetupStateCopyWith<ProfileSetupState> get copyWith => _$ProfileSetupStateCopyWithImpl<ProfileSetupState>(this as ProfileSetupState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileSetupState&&(identical(other.status, status) || other.status == status)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isAvatarUploading, isAvatarUploading) || other.isAvatarUploading == isAvatarUploading)&&(identical(other.uploadedAvatarUrl, uploadedAvatarUrl) || other.uploadedAvatarUrl == uploadedAvatarUrl)&&(identical(other.username, username) || other.username == username)&&(identical(other.isCheckingUsername, isCheckingUsername) || other.isCheckingUsername == isCheckingUsername)&&(identical(other.isUsernameAvailable, isUsernameAvailable) || other.isUsernameAvailable == isUsernameAvailable)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,avatar,isAvatarUploading,uploadedAvatarUrl,username,isCheckingUsername,isUsernameAvailable,errorMessage);

@override
String toString() {
  return 'ProfileSetupState(status: $status, avatar: $avatar, isAvatarUploading: $isAvatarUploading, uploadedAvatarUrl: $uploadedAvatarUrl, username: $username, isCheckingUsername: $isCheckingUsername, isUsernameAvailable: $isUsernameAvailable, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class $ProfileSetupStateCopyWith<$Res>  {
  factory $ProfileSetupStateCopyWith(ProfileSetupState value, $Res Function(ProfileSetupState) _then) = _$ProfileSetupStateCopyWithImpl;
@useResult
$Res call({
 FormStatus status, File? avatar, bool isAvatarUploading, String? uploadedAvatarUrl, String username, bool isCheckingUsername, bool isUsernameAvailable, String? errorMessage
});




}
/// @nodoc
class _$ProfileSetupStateCopyWithImpl<$Res>
    implements $ProfileSetupStateCopyWith<$Res> {
  _$ProfileSetupStateCopyWithImpl(this._self, this._then);

  final ProfileSetupState _self;
  final $Res Function(ProfileSetupState) _then;

/// Create a copy of ProfileSetupState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? status = null,Object? avatar = freezed,Object? isAvatarUploading = null,Object? uploadedAvatarUrl = freezed,Object? username = null,Object? isCheckingUsername = null,Object? isUsernameAvailable = null,Object? errorMessage = freezed,}) {
  return _then(_self.copyWith(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormStatus,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as File?,isAvatarUploading: null == isAvatarUploading ? _self.isAvatarUploading : isAvatarUploading // ignore: cast_nullable_to_non_nullable
as bool,uploadedAvatarUrl: freezed == uploadedAvatarUrl ? _self.uploadedAvatarUrl : uploadedAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,isCheckingUsername: null == isCheckingUsername ? _self.isCheckingUsername : isCheckingUsername // ignore: cast_nullable_to_non_nullable
as bool,isUsernameAvailable: null == isUsernameAvailable ? _self.isUsernameAvailable : isUsernameAvailable // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileSetupState].
extension ProfileSetupStatePatterns on ProfileSetupState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileSetupState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileSetupState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileSetupState value)  $default,){
final _that = this;
switch (_that) {
case _ProfileSetupState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileSetupState value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileSetupState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( FormStatus status,  File? avatar,  bool isAvatarUploading,  String? uploadedAvatarUrl,  String username,  bool isCheckingUsername,  bool isUsernameAvailable,  String? errorMessage)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileSetupState() when $default != null:
return $default(_that.status,_that.avatar,_that.isAvatarUploading,_that.uploadedAvatarUrl,_that.username,_that.isCheckingUsername,_that.isUsernameAvailable,_that.errorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( FormStatus status,  File? avatar,  bool isAvatarUploading,  String? uploadedAvatarUrl,  String username,  bool isCheckingUsername,  bool isUsernameAvailable,  String? errorMessage)  $default,) {final _that = this;
switch (_that) {
case _ProfileSetupState():
return $default(_that.status,_that.avatar,_that.isAvatarUploading,_that.uploadedAvatarUrl,_that.username,_that.isCheckingUsername,_that.isUsernameAvailable,_that.errorMessage);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( FormStatus status,  File? avatar,  bool isAvatarUploading,  String? uploadedAvatarUrl,  String username,  bool isCheckingUsername,  bool isUsernameAvailable,  String? errorMessage)?  $default,) {final _that = this;
switch (_that) {
case _ProfileSetupState() when $default != null:
return $default(_that.status,_that.avatar,_that.isAvatarUploading,_that.uploadedAvatarUrl,_that.username,_that.isCheckingUsername,_that.isUsernameAvailable,_that.errorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _ProfileSetupState extends ProfileSetupState {
  const _ProfileSetupState({this.status = FormStatus.initial, this.avatar, this.isAvatarUploading = false, this.uploadedAvatarUrl, this.username = '', this.isCheckingUsername = false, this.isUsernameAvailable = false, this.errorMessage}): super._();
  

@override@JsonKey() final  FormStatus status;
@override final  File? avatar;
@override@JsonKey() final  bool isAvatarUploading;
@override final  String? uploadedAvatarUrl;
@override@JsonKey() final  String username;
@override@JsonKey() final  bool isCheckingUsername;
@override@JsonKey() final  bool isUsernameAvailable;
@override final  String? errorMessage;

/// Create a copy of ProfileSetupState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileSetupStateCopyWith<_ProfileSetupState> get copyWith => __$ProfileSetupStateCopyWithImpl<_ProfileSetupState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileSetupState&&(identical(other.status, status) || other.status == status)&&(identical(other.avatar, avatar) || other.avatar == avatar)&&(identical(other.isAvatarUploading, isAvatarUploading) || other.isAvatarUploading == isAvatarUploading)&&(identical(other.uploadedAvatarUrl, uploadedAvatarUrl) || other.uploadedAvatarUrl == uploadedAvatarUrl)&&(identical(other.username, username) || other.username == username)&&(identical(other.isCheckingUsername, isCheckingUsername) || other.isCheckingUsername == isCheckingUsername)&&(identical(other.isUsernameAvailable, isUsernameAvailable) || other.isUsernameAvailable == isUsernameAvailable)&&(identical(other.errorMessage, errorMessage) || other.errorMessage == errorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,status,avatar,isAvatarUploading,uploadedAvatarUrl,username,isCheckingUsername,isUsernameAvailable,errorMessage);

@override
String toString() {
  return 'ProfileSetupState(status: $status, avatar: $avatar, isAvatarUploading: $isAvatarUploading, uploadedAvatarUrl: $uploadedAvatarUrl, username: $username, isCheckingUsername: $isCheckingUsername, isUsernameAvailable: $isUsernameAvailable, errorMessage: $errorMessage)';
}


}

/// @nodoc
abstract mixin class _$ProfileSetupStateCopyWith<$Res> implements $ProfileSetupStateCopyWith<$Res> {
  factory _$ProfileSetupStateCopyWith(_ProfileSetupState value, $Res Function(_ProfileSetupState) _then) = __$ProfileSetupStateCopyWithImpl;
@override @useResult
$Res call({
 FormStatus status, File? avatar, bool isAvatarUploading, String? uploadedAvatarUrl, String username, bool isCheckingUsername, bool isUsernameAvailable, String? errorMessage
});




}
/// @nodoc
class __$ProfileSetupStateCopyWithImpl<$Res>
    implements _$ProfileSetupStateCopyWith<$Res> {
  __$ProfileSetupStateCopyWithImpl(this._self, this._then);

  final _ProfileSetupState _self;
  final $Res Function(_ProfileSetupState) _then;

/// Create a copy of ProfileSetupState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? status = null,Object? avatar = freezed,Object? isAvatarUploading = null,Object? uploadedAvatarUrl = freezed,Object? username = null,Object? isCheckingUsername = null,Object? isUsernameAvailable = null,Object? errorMessage = freezed,}) {
  return _then(_ProfileSetupState(
status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as FormStatus,avatar: freezed == avatar ? _self.avatar : avatar // ignore: cast_nullable_to_non_nullable
as File?,isAvatarUploading: null == isAvatarUploading ? _self.isAvatarUploading : isAvatarUploading // ignore: cast_nullable_to_non_nullable
as bool,uploadedAvatarUrl: freezed == uploadedAvatarUrl ? _self.uploadedAvatarUrl : uploadedAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,isCheckingUsername: null == isCheckingUsername ? _self.isCheckingUsername : isCheckingUsername // ignore: cast_nullable_to_non_nullable
as bool,isUsernameAvailable: null == isUsernameAvailable ? _self.isUsernameAvailable : isUsernameAvailable // ignore: cast_nullable_to_non_nullable
as bool,errorMessage: freezed == errorMessage ? _self.errorMessage : errorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
