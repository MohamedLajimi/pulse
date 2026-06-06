// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AuthEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent()';
}


}

/// @nodoc
class $AuthEventCopyWith<$Res>  {
$AuthEventCopyWith(AuthEvent _, $Res Function(AuthEvent) __);
}


/// Adds pattern-matching-related methods to [AuthEvent].
extension AuthEventPatterns on AuthEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( SignInRequested value)?  signInRequested,TResult Function( SignUpRequested value)?  signUpRequested,TResult Function( ResetPasswordRequested value)?  resetPasswordRequested,TResult Function( SignOutRequested value)?  signOutRequested,required TResult orElse(),}){
final _that = this;
switch (_that) {
case SignInRequested() when signInRequested != null:
return signInRequested(_that);case SignUpRequested() when signUpRequested != null:
return signUpRequested(_that);case ResetPasswordRequested() when resetPasswordRequested != null:
return resetPasswordRequested(_that);case SignOutRequested() when signOutRequested != null:
return signOutRequested(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( SignInRequested value)  signInRequested,required TResult Function( SignUpRequested value)  signUpRequested,required TResult Function( ResetPasswordRequested value)  resetPasswordRequested,required TResult Function( SignOutRequested value)  signOutRequested,}){
final _that = this;
switch (_that) {
case SignInRequested():
return signInRequested(_that);case SignUpRequested():
return signUpRequested(_that);case ResetPasswordRequested():
return resetPasswordRequested(_that);case SignOutRequested():
return signOutRequested(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( SignInRequested value)?  signInRequested,TResult? Function( SignUpRequested value)?  signUpRequested,TResult? Function( ResetPasswordRequested value)?  resetPasswordRequested,TResult? Function( SignOutRequested value)?  signOutRequested,}){
final _that = this;
switch (_that) {
case SignInRequested() when signInRequested != null:
return signInRequested(_that);case SignUpRequested() when signUpRequested != null:
return signUpRequested(_that);case ResetPasswordRequested() when resetPasswordRequested != null:
return resetPasswordRequested(_that);case SignOutRequested() when signOutRequested != null:
return signOutRequested(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String email,  String password)?  signInRequested,TResult Function( String email,  String password)?  signUpRequested,TResult Function( String email)?  resetPasswordRequested,TResult Function()?  signOutRequested,required TResult orElse(),}) {final _that = this;
switch (_that) {
case SignInRequested() when signInRequested != null:
return signInRequested(_that.email,_that.password);case SignUpRequested() when signUpRequested != null:
return signUpRequested(_that.email,_that.password);case ResetPasswordRequested() when resetPasswordRequested != null:
return resetPasswordRequested(_that.email);case SignOutRequested() when signOutRequested != null:
return signOutRequested();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String email,  String password)  signInRequested,required TResult Function( String email,  String password)  signUpRequested,required TResult Function( String email)  resetPasswordRequested,required TResult Function()  signOutRequested,}) {final _that = this;
switch (_that) {
case SignInRequested():
return signInRequested(_that.email,_that.password);case SignUpRequested():
return signUpRequested(_that.email,_that.password);case ResetPasswordRequested():
return resetPasswordRequested(_that.email);case SignOutRequested():
return signOutRequested();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String email,  String password)?  signInRequested,TResult? Function( String email,  String password)?  signUpRequested,TResult? Function( String email)?  resetPasswordRequested,TResult? Function()?  signOutRequested,}) {final _that = this;
switch (_that) {
case SignInRequested() when signInRequested != null:
return signInRequested(_that.email,_that.password);case SignUpRequested() when signUpRequested != null:
return signUpRequested(_that.email,_that.password);case ResetPasswordRequested() when resetPasswordRequested != null:
return resetPasswordRequested(_that.email);case SignOutRequested() when signOutRequested != null:
return signOutRequested();case _:
  return null;

}
}

}

/// @nodoc


class SignInRequested implements AuthEvent {
  const SignInRequested({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignInRequestedCopyWith<SignInRequested> get copyWith => _$SignInRequestedCopyWithImpl<SignInRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignInRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signInRequested(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignInRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SignInRequestedCopyWith(SignInRequested value, $Res Function(SignInRequested) _then) = _$SignInRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$SignInRequestedCopyWithImpl<$Res>
    implements $SignInRequestedCopyWith<$Res> {
  _$SignInRequestedCopyWithImpl(this._self, this._then);

  final SignInRequested _self;
  final $Res Function(SignInRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(SignInRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignUpRequested implements AuthEvent {
  const SignUpRequested({required this.email, required this.password});
  

 final  String email;
 final  String password;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SignUpRequestedCopyWith<SignUpRequested> get copyWith => _$SignUpRequestedCopyWithImpl<SignUpRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignUpRequested&&(identical(other.email, email) || other.email == email)&&(identical(other.password, password) || other.password == password));
}


@override
int get hashCode => Object.hash(runtimeType,email,password);

@override
String toString() {
  return 'AuthEvent.signUpRequested(email: $email, password: $password)';
}


}

/// @nodoc
abstract mixin class $SignUpRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $SignUpRequestedCopyWith(SignUpRequested value, $Res Function(SignUpRequested) _then) = _$SignUpRequestedCopyWithImpl;
@useResult
$Res call({
 String email, String password
});




}
/// @nodoc
class _$SignUpRequestedCopyWithImpl<$Res>
    implements $SignUpRequestedCopyWith<$Res> {
  _$SignUpRequestedCopyWithImpl(this._self, this._then);

  final SignUpRequested _self;
  final $Res Function(SignUpRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,Object? password = null,}) {
  return _then(SignUpRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,password: null == password ? _self.password : password // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ResetPasswordRequested implements AuthEvent {
  const ResetPasswordRequested({required this.email});
  

 final  String email;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ResetPasswordRequestedCopyWith<ResetPasswordRequested> get copyWith => _$ResetPasswordRequestedCopyWithImpl<ResetPasswordRequested>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordRequested&&(identical(other.email, email) || other.email == email));
}


@override
int get hashCode => Object.hash(runtimeType,email);

@override
String toString() {
  return 'AuthEvent.resetPasswordRequested(email: $email)';
}


}

/// @nodoc
abstract mixin class $ResetPasswordRequestedCopyWith<$Res> implements $AuthEventCopyWith<$Res> {
  factory $ResetPasswordRequestedCopyWith(ResetPasswordRequested value, $Res Function(ResetPasswordRequested) _then) = _$ResetPasswordRequestedCopyWithImpl;
@useResult
$Res call({
 String email
});




}
/// @nodoc
class _$ResetPasswordRequestedCopyWithImpl<$Res>
    implements $ResetPasswordRequestedCopyWith<$Res> {
  _$ResetPasswordRequestedCopyWithImpl(this._self, this._then);

  final ResetPasswordRequested _self;
  final $Res Function(ResetPasswordRequested) _then;

/// Create a copy of AuthEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? email = null,}) {
  return _then(ResetPasswordRequested(
email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class SignOutRequested implements AuthEvent {
  const SignOutRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SignOutRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthEvent.signOutRequested()';
}


}




/// @nodoc
mixin _$AuthState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState()';
}


}

/// @nodoc
class $AuthStateCopyWith<$Res>  {
$AuthStateCopyWith(AuthState _, $Res Function(AuthState) __);
}


/// Adds pattern-matching-related methods to [AuthState].
extension AuthStatePatterns on AuthState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( AuthInitial value)?  initial,TResult Function( AuthLoading value)?  loading,TResult Function( AuthSuccess value)?  success,TResult Function( AuthError value)?  error,TResult Function( ResetPasswordSent value)?  resetPasswordSent,required TResult orElse(),}){
final _that = this;
switch (_that) {
case AuthInitial() when initial != null:
return initial(_that);case AuthLoading() when loading != null:
return loading(_that);case AuthSuccess() when success != null:
return success(_that);case AuthError() when error != null:
return error(_that);case ResetPasswordSent() when resetPasswordSent != null:
return resetPasswordSent(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( AuthInitial value)  initial,required TResult Function( AuthLoading value)  loading,required TResult Function( AuthSuccess value)  success,required TResult Function( AuthError value)  error,required TResult Function( ResetPasswordSent value)  resetPasswordSent,}){
final _that = this;
switch (_that) {
case AuthInitial():
return initial(_that);case AuthLoading():
return loading(_that);case AuthSuccess():
return success(_that);case AuthError():
return error(_that);case ResetPasswordSent():
return resetPasswordSent(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( AuthInitial value)?  initial,TResult? Function( AuthLoading value)?  loading,TResult? Function( AuthSuccess value)?  success,TResult? Function( AuthError value)?  error,TResult? Function( ResetPasswordSent value)?  resetPasswordSent,}){
final _that = this;
switch (_that) {
case AuthInitial() when initial != null:
return initial(_that);case AuthLoading() when loading != null:
return loading(_that);case AuthSuccess() when success != null:
return success(_that);case AuthError() when error != null:
return error(_that);case ResetPasswordSent() when resetPasswordSent != null:
return resetPasswordSent(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function()?  success,TResult Function( String message)?  error,TResult Function()?  resetPasswordSent,required TResult orElse(),}) {final _that = this;
switch (_that) {
case AuthInitial() when initial != null:
return initial();case AuthLoading() when loading != null:
return loading();case AuthSuccess() when success != null:
return success();case AuthError() when error != null:
return error(_that.message);case ResetPasswordSent() when resetPasswordSent != null:
return resetPasswordSent();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function()  success,required TResult Function( String message)  error,required TResult Function()  resetPasswordSent,}) {final _that = this;
switch (_that) {
case AuthInitial():
return initial();case AuthLoading():
return loading();case AuthSuccess():
return success();case AuthError():
return error(_that.message);case ResetPasswordSent():
return resetPasswordSent();}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function()?  success,TResult? Function( String message)?  error,TResult? Function()?  resetPasswordSent,}) {final _that = this;
switch (_that) {
case AuthInitial() when initial != null:
return initial();case AuthLoading() when loading != null:
return loading();case AuthSuccess() when success != null:
return success();case AuthError() when error != null:
return error(_that.message);case ResetPasswordSent() when resetPasswordSent != null:
return resetPasswordSent();case _:
  return null;

}
}

}

/// @nodoc


class AuthInitial implements AuthState {
  const AuthInitial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthInitial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.initial()';
}


}




/// @nodoc


class AuthLoading implements AuthState {
  const AuthLoading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthLoading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.loading()';
}


}




/// @nodoc


class AuthSuccess implements AuthState {
  const AuthSuccess();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthSuccess);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.success()';
}


}




/// @nodoc


class AuthError implements AuthState {
  const AuthError(this.message);
  

 final  String message;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AuthErrorCopyWith<AuthError> get copyWith => _$AuthErrorCopyWithImpl<AuthError>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AuthError&&(identical(other.message, message) || other.message == message));
}


@override
int get hashCode => Object.hash(runtimeType,message);

@override
String toString() {
  return 'AuthState.error(message: $message)';
}


}

/// @nodoc
abstract mixin class $AuthErrorCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory $AuthErrorCopyWith(AuthError value, $Res Function(AuthError) _then) = _$AuthErrorCopyWithImpl;
@useResult
$Res call({
 String message
});




}
/// @nodoc
class _$AuthErrorCopyWithImpl<$Res>
    implements $AuthErrorCopyWith<$Res> {
  _$AuthErrorCopyWithImpl(this._self, this._then);

  final AuthError _self;
  final $Res Function(AuthError) _then;

/// Create a copy of AuthState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? message = null,}) {
  return _then(AuthError(
null == message ? _self.message : message // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class ResetPasswordSent implements AuthState {
  const ResetPasswordSent();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ResetPasswordSent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'AuthState.resetPasswordSent()';
}


}




// dart format on
