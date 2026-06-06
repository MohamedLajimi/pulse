// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$EditProfileEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileEvent()';
}


}

/// @nodoc
class $EditProfileEventCopyWith<$Res>  {
$EditProfileEventCopyWith(EditProfileEvent _, $Res Function(EditProfileEvent) __);
}


/// Adds pattern-matching-related methods to [EditProfileEvent].
extension EditProfileEventPatterns on EditProfileEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( FetchProfile value)?  fetchProfile,TResult Function( UsernameChanged value)?  usernameChanged,TResult Function( DisplayNameChanged value)?  displayNameChanged,TResult Function( BioChanged value)?  bioChanged,TResult Function( AvatarChanged value)?  avatarChanged,TResult Function( RemoveAvatar value)?  removeAvatar,TResult Function( SubmitProfile value)?  submit,required TResult orElse(),}){
final _that = this;
switch (_that) {
case FetchProfile() when fetchProfile != null:
return fetchProfile(_that);case UsernameChanged() when usernameChanged != null:
return usernameChanged(_that);case DisplayNameChanged() when displayNameChanged != null:
return displayNameChanged(_that);case BioChanged() when bioChanged != null:
return bioChanged(_that);case AvatarChanged() when avatarChanged != null:
return avatarChanged(_that);case RemoveAvatar() when removeAvatar != null:
return removeAvatar(_that);case SubmitProfile() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( FetchProfile value)  fetchProfile,required TResult Function( UsernameChanged value)  usernameChanged,required TResult Function( DisplayNameChanged value)  displayNameChanged,required TResult Function( BioChanged value)  bioChanged,required TResult Function( AvatarChanged value)  avatarChanged,required TResult Function( RemoveAvatar value)  removeAvatar,required TResult Function( SubmitProfile value)  submit,}){
final _that = this;
switch (_that) {
case FetchProfile():
return fetchProfile(_that);case UsernameChanged():
return usernameChanged(_that);case DisplayNameChanged():
return displayNameChanged(_that);case BioChanged():
return bioChanged(_that);case AvatarChanged():
return avatarChanged(_that);case RemoveAvatar():
return removeAvatar(_that);case SubmitProfile():
return submit(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( FetchProfile value)?  fetchProfile,TResult? Function( UsernameChanged value)?  usernameChanged,TResult? Function( DisplayNameChanged value)?  displayNameChanged,TResult? Function( BioChanged value)?  bioChanged,TResult? Function( AvatarChanged value)?  avatarChanged,TResult? Function( RemoveAvatar value)?  removeAvatar,TResult? Function( SubmitProfile value)?  submit,}){
final _that = this;
switch (_that) {
case FetchProfile() when fetchProfile != null:
return fetchProfile(_that);case UsernameChanged() when usernameChanged != null:
return usernameChanged(_that);case DisplayNameChanged() when displayNameChanged != null:
return displayNameChanged(_that);case BioChanged() when bioChanged != null:
return bioChanged(_that);case AvatarChanged() when avatarChanged != null:
return avatarChanged(_that);case RemoveAvatar() when removeAvatar != null:
return removeAvatar(_that);case SubmitProfile() when submit != null:
return submit(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String userId)?  fetchProfile,TResult Function( String username)?  usernameChanged,TResult Function( String displayName)?  displayNameChanged,TResult Function( String bio)?  bioChanged,TResult Function( File? file)?  avatarChanged,TResult Function()?  removeAvatar,TResult Function()?  submit,required TResult orElse(),}) {final _that = this;
switch (_that) {
case FetchProfile() when fetchProfile != null:
return fetchProfile(_that.userId);case UsernameChanged() when usernameChanged != null:
return usernameChanged(_that.username);case DisplayNameChanged() when displayNameChanged != null:
return displayNameChanged(_that.displayName);case BioChanged() when bioChanged != null:
return bioChanged(_that.bio);case AvatarChanged() when avatarChanged != null:
return avatarChanged(_that.file);case RemoveAvatar() when removeAvatar != null:
return removeAvatar();case SubmitProfile() when submit != null:
return submit();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String userId)  fetchProfile,required TResult Function( String username)  usernameChanged,required TResult Function( String displayName)  displayNameChanged,required TResult Function( String bio)  bioChanged,required TResult Function( File? file)  avatarChanged,required TResult Function()  removeAvatar,required TResult Function()  submit,}) {final _that = this;
switch (_that) {
case FetchProfile():
return fetchProfile(_that.userId);case UsernameChanged():
return usernameChanged(_that.username);case DisplayNameChanged():
return displayNameChanged(_that.displayName);case BioChanged():
return bioChanged(_that.bio);case AvatarChanged():
return avatarChanged(_that.file);case RemoveAvatar():
return removeAvatar();case SubmitProfile():
return submit();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String userId)?  fetchProfile,TResult? Function( String username)?  usernameChanged,TResult? Function( String displayName)?  displayNameChanged,TResult? Function( String bio)?  bioChanged,TResult? Function( File? file)?  avatarChanged,TResult? Function()?  removeAvatar,TResult? Function()?  submit,}) {final _that = this;
switch (_that) {
case FetchProfile() when fetchProfile != null:
return fetchProfile(_that.userId);case UsernameChanged() when usernameChanged != null:
return usernameChanged(_that.username);case DisplayNameChanged() when displayNameChanged != null:
return displayNameChanged(_that.displayName);case BioChanged() when bioChanged != null:
return bioChanged(_that.bio);case AvatarChanged() when avatarChanged != null:
return avatarChanged(_that.file);case RemoveAvatar() when removeAvatar != null:
return removeAvatar();case SubmitProfile() when submit != null:
return submit();case _:
  return null;

}
}

}

/// @nodoc


class FetchProfile implements EditProfileEvent {
  const FetchProfile(this.userId);
  

 final  String userId;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$FetchProfileCopyWith<FetchProfile> get copyWith => _$FetchProfileCopyWithImpl<FetchProfile>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is FetchProfile&&(identical(other.userId, userId) || other.userId == userId));
}


@override
int get hashCode => Object.hash(runtimeType,userId);

@override
String toString() {
  return 'EditProfileEvent.fetchProfile(userId: $userId)';
}


}

/// @nodoc
abstract mixin class $FetchProfileCopyWith<$Res> implements $EditProfileEventCopyWith<$Res> {
  factory $FetchProfileCopyWith(FetchProfile value, $Res Function(FetchProfile) _then) = _$FetchProfileCopyWithImpl;
@useResult
$Res call({
 String userId
});




}
/// @nodoc
class _$FetchProfileCopyWithImpl<$Res>
    implements $FetchProfileCopyWith<$Res> {
  _$FetchProfileCopyWithImpl(this._self, this._then);

  final FetchProfile _self;
  final $Res Function(FetchProfile) _then;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? userId = null,}) {
  return _then(FetchProfile(
null == userId ? _self.userId : userId // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class UsernameChanged implements EditProfileEvent {
  const UsernameChanged(this.username);
  

 final  String username;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UsernameChangedCopyWith<UsernameChanged> get copyWith => _$UsernameChangedCopyWithImpl<UsernameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UsernameChanged&&(identical(other.username, username) || other.username == username));
}


@override
int get hashCode => Object.hash(runtimeType,username);

@override
String toString() {
  return 'EditProfileEvent.usernameChanged(username: $username)';
}


}

/// @nodoc
abstract mixin class $UsernameChangedCopyWith<$Res> implements $EditProfileEventCopyWith<$Res> {
  factory $UsernameChangedCopyWith(UsernameChanged value, $Res Function(UsernameChanged) _then) = _$UsernameChangedCopyWithImpl;
@useResult
$Res call({
 String username
});




}
/// @nodoc
class _$UsernameChangedCopyWithImpl<$Res>
    implements $UsernameChangedCopyWith<$Res> {
  _$UsernameChangedCopyWithImpl(this._self, this._then);

  final UsernameChanged _self;
  final $Res Function(UsernameChanged) _then;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? username = null,}) {
  return _then(UsernameChanged(
null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class DisplayNameChanged implements EditProfileEvent {
  const DisplayNameChanged(this.displayName);
  

 final  String displayName;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DisplayNameChangedCopyWith<DisplayNameChanged> get copyWith => _$DisplayNameChangedCopyWithImpl<DisplayNameChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DisplayNameChanged&&(identical(other.displayName, displayName) || other.displayName == displayName));
}


@override
int get hashCode => Object.hash(runtimeType,displayName);

@override
String toString() {
  return 'EditProfileEvent.displayNameChanged(displayName: $displayName)';
}


}

/// @nodoc
abstract mixin class $DisplayNameChangedCopyWith<$Res> implements $EditProfileEventCopyWith<$Res> {
  factory $DisplayNameChangedCopyWith(DisplayNameChanged value, $Res Function(DisplayNameChanged) _then) = _$DisplayNameChangedCopyWithImpl;
@useResult
$Res call({
 String displayName
});




}
/// @nodoc
class _$DisplayNameChangedCopyWithImpl<$Res>
    implements $DisplayNameChangedCopyWith<$Res> {
  _$DisplayNameChangedCopyWithImpl(this._self, this._then);

  final DisplayNameChanged _self;
  final $Res Function(DisplayNameChanged) _then;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? displayName = null,}) {
  return _then(DisplayNameChanged(
null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class BioChanged implements EditProfileEvent {
  const BioChanged(this.bio);
  

 final  String bio;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$BioChangedCopyWith<BioChanged> get copyWith => _$BioChangedCopyWithImpl<BioChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is BioChanged&&(identical(other.bio, bio) || other.bio == bio));
}


@override
int get hashCode => Object.hash(runtimeType,bio);

@override
String toString() {
  return 'EditProfileEvent.bioChanged(bio: $bio)';
}


}

/// @nodoc
abstract mixin class $BioChangedCopyWith<$Res> implements $EditProfileEventCopyWith<$Res> {
  factory $BioChangedCopyWith(BioChanged value, $Res Function(BioChanged) _then) = _$BioChangedCopyWithImpl;
@useResult
$Res call({
 String bio
});




}
/// @nodoc
class _$BioChangedCopyWithImpl<$Res>
    implements $BioChangedCopyWith<$Res> {
  _$BioChangedCopyWithImpl(this._self, this._then);

  final BioChanged _self;
  final $Res Function(BioChanged) _then;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? bio = null,}) {
  return _then(BioChanged(
null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class AvatarChanged implements EditProfileEvent {
  const AvatarChanged(this.file);
  

 final  File? file;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AvatarChangedCopyWith<AvatarChanged> get copyWith => _$AvatarChangedCopyWithImpl<AvatarChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AvatarChanged&&(identical(other.file, file) || other.file == file));
}


@override
int get hashCode => Object.hash(runtimeType,file);

@override
String toString() {
  return 'EditProfileEvent.avatarChanged(file: $file)';
}


}

/// @nodoc
abstract mixin class $AvatarChangedCopyWith<$Res> implements $EditProfileEventCopyWith<$Res> {
  factory $AvatarChangedCopyWith(AvatarChanged value, $Res Function(AvatarChanged) _then) = _$AvatarChangedCopyWithImpl;
@useResult
$Res call({
 File? file
});




}
/// @nodoc
class _$AvatarChangedCopyWithImpl<$Res>
    implements $AvatarChangedCopyWith<$Res> {
  _$AvatarChangedCopyWithImpl(this._self, this._then);

  final AvatarChanged _self;
  final $Res Function(AvatarChanged) _then;

/// Create a copy of EditProfileEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? file = freezed,}) {
  return _then(AvatarChanged(
freezed == file ? _self.file : file // ignore: cast_nullable_to_non_nullable
as File?,
  ));
}


}

/// @nodoc


class RemoveAvatar implements EditProfileEvent {
  const RemoveAvatar();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RemoveAvatar);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileEvent.removeAvatar()';
}


}




/// @nodoc


class SubmitProfile implements EditProfileEvent {
  const SubmitProfile();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SubmitProfile);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileEvent.submit()';
}


}




/// @nodoc
mixin _$EditProfileState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is EditProfileState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileState()';
}


}

/// @nodoc
class $EditProfileStateCopyWith<$Res>  {
$EditProfileStateCopyWith(EditProfileState _, $Res Function(EditProfileState) __);
}


/// Adds pattern-matching-related methods to [EditProfileState].
extension EditProfileStatePatterns on EditProfileState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Loading value)?  loading,TResult Function( _FetchError value)?  fetchError,TResult Function( _Editing value)?  editing,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _FetchError() when fetchError != null:
return fetchError(_that);case _Editing() when editing != null:
return editing(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Loading value)  loading,required TResult Function( _FetchError value)  fetchError,required TResult Function( _Editing value)  editing,}){
final _that = this;
switch (_that) {
case _Loading():
return loading(_that);case _FetchError():
return fetchError(_that);case _Editing():
return editing(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Loading value)?  loading,TResult? Function( _FetchError value)?  fetchError,TResult? Function( _Editing value)?  editing,}){
final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading(_that);case _FetchError() when fetchError != null:
return fetchError(_that);case _Editing() when editing != null:
return editing(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  loading,TResult Function( String message)?  fetchError,TResult Function( ProfileEntity initialProfile,  String username,  String displayName,  String bio,  File? newAvatarFile,  bool removeAvatar,  bool isCheckingUsername,  bool isUsernameAvailable,  bool isAvatarUploading,  String? uploadedAvatarUrl,  EditProfileSubmissionStatus submissionStatus,  String? submissionErrorMessage)?  editing,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _FetchError() when fetchError != null:
return fetchError(_that.message);case _Editing() when editing != null:
return editing(_that.initialProfile,_that.username,_that.displayName,_that.bio,_that.newAvatarFile,_that.removeAvatar,_that.isCheckingUsername,_that.isUsernameAvailable,_that.isAvatarUploading,_that.uploadedAvatarUrl,_that.submissionStatus,_that.submissionErrorMessage);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  loading,required TResult Function( String message)  fetchError,required TResult Function( ProfileEntity initialProfile,  String username,  String displayName,  String bio,  File? newAvatarFile,  bool removeAvatar,  bool isCheckingUsername,  bool isUsernameAvailable,  bool isAvatarUploading,  String? uploadedAvatarUrl,  EditProfileSubmissionStatus submissionStatus,  String? submissionErrorMessage)  editing,}) {final _that = this;
switch (_that) {
case _Loading():
return loading();case _FetchError():
return fetchError(_that.message);case _Editing():
return editing(_that.initialProfile,_that.username,_that.displayName,_that.bio,_that.newAvatarFile,_that.removeAvatar,_that.isCheckingUsername,_that.isUsernameAvailable,_that.isAvatarUploading,_that.uploadedAvatarUrl,_that.submissionStatus,_that.submissionErrorMessage);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  loading,TResult? Function( String message)?  fetchError,TResult? Function( ProfileEntity initialProfile,  String username,  String displayName,  String bio,  File? newAvatarFile,  bool removeAvatar,  bool isCheckingUsername,  bool isUsernameAvailable,  bool isAvatarUploading,  String? uploadedAvatarUrl,  EditProfileSubmissionStatus submissionStatus,  String? submissionErrorMessage)?  editing,}) {final _that = this;
switch (_that) {
case _Loading() when loading != null:
return loading();case _FetchError() when fetchError != null:
return fetchError(_that.message);case _Editing() when editing != null:
return editing(_that.initialProfile,_that.username,_that.displayName,_that.bio,_that.newAvatarFile,_that.removeAvatar,_that.isCheckingUsername,_that.isUsernameAvailable,_that.isAvatarUploading,_that.uploadedAvatarUrl,_that.submissionStatus,_that.submissionErrorMessage);case _:
  return null;

}
}

}

/// @nodoc


class _Loading extends EditProfileState {
  const _Loading(): super._();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'EditProfileState.loading()';
}


}




/// @nodoc


class _FetchError extends EditProfileState {
  const _FetchError(this.message): super._();
  

 final  String message;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$FetchErrorCopyWith<_FetchError> get copyWith => __$FetchErrorCopyWithImpl<_FetchError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _FetchError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'EditProfileState.fetchError(message: $message)';
}


}

/// @nodoc
abstract mixin class _$FetchErrorCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$FetchErrorCopyWith(_FetchError value, $Res Function(_FetchError) _then) = __$FetchErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class __$FetchErrorCopyWithImpl<$Res>
    implements _$FetchErrorCopyWith<$Res> {
  __$FetchErrorCopyWithImpl(this._self, this._then);

  final _FetchError _self;
  final $Res Function(_FetchError) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(_FetchError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _Editing extends EditProfileState {
  const _Editing({required this.initialProfile, this.username = '', this.displayName = '', this.bio = '', this.newAvatarFile, this.removeAvatar = false, this.isCheckingUsername = false, this.isUsernameAvailable = true, this.isAvatarUploading = false, this.uploadedAvatarUrl, this.submissionStatus = EditProfileSubmissionStatus.initial, this.submissionErrorMessage}): super._();
  

 final  ProfileEntity initialProfile;
@JsonKey() final  String username;
@JsonKey() final  String displayName;
@JsonKey() final  String bio;
 final  File? newAvatarFile;
@JsonKey() final  bool removeAvatar;
@JsonKey() final  bool isCheckingUsername;
@JsonKey() final  bool isUsernameAvailable;
@JsonKey() final  bool isAvatarUploading;
 final  String? uploadedAvatarUrl;
@JsonKey() final  EditProfileSubmissionStatus submissionStatus;
 final  String? submissionErrorMessage;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$EditingCopyWith<_Editing> get copyWith => __$EditingCopyWithImpl<_Editing>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Editing&&(identical(other.initialProfile, initialProfile) || other.initialProfile == initialProfile)&&(identical(other.username, username) || other.username == username)&&(identical(other.displayName, displayName) || other.displayName == displayName)&&(identical(other.bio, bio) || other.bio == bio)&&(identical(other.newAvatarFile, newAvatarFile) || other.newAvatarFile == newAvatarFile)&&(identical(other.removeAvatar, removeAvatar) || other.removeAvatar == removeAvatar)&&(identical(other.isCheckingUsername, isCheckingUsername) || other.isCheckingUsername == isCheckingUsername)&&(identical(other.isUsernameAvailable, isUsernameAvailable) || other.isUsernameAvailable == isUsernameAvailable)&&(identical(other.isAvatarUploading, isAvatarUploading) || other.isAvatarUploading == isAvatarUploading)&&(identical(other.uploadedAvatarUrl, uploadedAvatarUrl) || other.uploadedAvatarUrl == uploadedAvatarUrl)&&(identical(other.submissionStatus, submissionStatus) || other.submissionStatus == submissionStatus)&&(identical(other.submissionErrorMessage, submissionErrorMessage) || other.submissionErrorMessage == submissionErrorMessage));
}


@override
int get hashCode => Object.hash(runtimeType,initialProfile,username,displayName,bio,newAvatarFile,removeAvatar,isCheckingUsername,isUsernameAvailable,isAvatarUploading,uploadedAvatarUrl,submissionStatus,submissionErrorMessage);

@override
String toString() {
  return 'EditProfileState.editing(initialProfile: $initialProfile, username: $username, displayName: $displayName, bio: $bio, newAvatarFile: $newAvatarFile, removeAvatar: $removeAvatar, isCheckingUsername: $isCheckingUsername, isUsernameAvailable: $isUsernameAvailable, isAvatarUploading: $isAvatarUploading, uploadedAvatarUrl: $uploadedAvatarUrl, submissionStatus: $submissionStatus, submissionErrorMessage: $submissionErrorMessage)';
}


}

/// @nodoc
abstract mixin class _$EditingCopyWith<$Res> implements $EditProfileStateCopyWith<$Res> {
  factory _$EditingCopyWith(_Editing value, $Res Function(_Editing) _then) = __$EditingCopyWithImpl;
@useResult
$Res call({
 ProfileEntity initialProfile, String username, String displayName, String bio, File? newAvatarFile, bool removeAvatar, bool isCheckingUsername, bool isUsernameAvailable, bool isAvatarUploading, String? uploadedAvatarUrl, EditProfileSubmissionStatus submissionStatus, String? submissionErrorMessage
});




}
/// @nodoc
class __$EditingCopyWithImpl<$Res>
    implements _$EditingCopyWith<$Res> {
  __$EditingCopyWithImpl(this._self, this._then);

  final _Editing _self;
  final $Res Function(_Editing) _then;

/// Create a copy of EditProfileState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? initialProfile = null,Object? username = null,Object? displayName = null,Object? bio = null,Object? newAvatarFile = freezed,Object? removeAvatar = null,Object? isCheckingUsername = null,Object? isUsernameAvailable = null,Object? isAvatarUploading = null,Object? uploadedAvatarUrl = freezed,Object? submissionStatus = null,Object? submissionErrorMessage = freezed,}) {
  return _then(_Editing(
initialProfile: null == initialProfile ? _self.initialProfile : initialProfile // ignore: cast_nullable_to_non_nullable
as ProfileEntity,username: null == username ? _self.username : username // ignore: cast_nullable_to_non_nullable
as String,displayName: null == displayName ? _self.displayName : displayName // ignore: cast_nullable_to_non_nullable
as String,bio: null == bio ? _self.bio : bio // ignore: cast_nullable_to_non_nullable
as String,newAvatarFile: freezed == newAvatarFile ? _self.newAvatarFile : newAvatarFile // ignore: cast_nullable_to_non_nullable
as File?,removeAvatar: null == removeAvatar ? _self.removeAvatar : removeAvatar // ignore: cast_nullable_to_non_nullable
as bool,isCheckingUsername: null == isCheckingUsername ? _self.isCheckingUsername : isCheckingUsername // ignore: cast_nullable_to_non_nullable
as bool,isUsernameAvailable: null == isUsernameAvailable ? _self.isUsernameAvailable : isUsernameAvailable // ignore: cast_nullable_to_non_nullable
as bool,isAvatarUploading: null == isAvatarUploading ? _self.isAvatarUploading : isAvatarUploading // ignore: cast_nullable_to_non_nullable
as bool,uploadedAvatarUrl: freezed == uploadedAvatarUrl ? _self.uploadedAvatarUrl : uploadedAvatarUrl // ignore: cast_nullable_to_non_nullable
as String?,submissionStatus: null == submissionStatus ? _self.submissionStatus : submissionStatus // ignore: cast_nullable_to_non_nullable
as EditProfileSubmissionStatus,submissionErrorMessage: freezed == submissionErrorMessage ? _self.submissionErrorMessage : submissionErrorMessage // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
