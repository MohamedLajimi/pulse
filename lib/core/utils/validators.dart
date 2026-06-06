import 'package:pulse/core/constants/app_constants.dart';

abstract final class Validators {
  static final _emailRegex = RegExp(
    r'^[a-zA-Z0-9.!#$%&*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,61}[a-zA-Z0-9])?)*$',
  );

  static final _usernameRegex = RegExp(r'^[a-zA-Z0-9._]+$');

  static String? email(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Email is required';
    }
    if (!_emailRegex.hasMatch(value.trim())) {
      return 'Enter a valid email address';
    }
    return null;
  }

  static String? password(String? value) {
    if (value == null || value.isEmpty) {
      return 'Password is required';
    }
    if (value.length < AppConstants.passwordMinLength) {
      return 'Password must be at least ${AppConstants.passwordMinLength} characters';
    }
    if (!value.contains(RegExp(r'[A-Z]'))) {
      return 'Password must contain at least one uppercase letter';
    }
    if (!value.contains(RegExp(r'[a-z]'))) {
      return 'Password must contain at least one lowercase letter';
    }
    if (!value.contains(RegExp(r'[0-9]'))) {
      return 'Password must contain at least one number';
    }
    return null;
  }

  static String? confirmPassword(String? value, String password) {
    final base = Validators.password(value);
    if (base != null) return base;
    if (value != password) {
      return 'Passwords do not match';
    }
    return null;
  }

  static String? username(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Username is required';
    }
    final trimmed = value.trim();
    if (trimmed.length < AppConstants.usernameMinLength) {
      return 'Username must be at least ${AppConstants.usernameMinLength} characters';
    }
    if (trimmed.length > AppConstants.usernameMaxLength) {
      return 'Username must be at most ${AppConstants.usernameMaxLength} characters';
    }
    if (!_usernameRegex.hasMatch(trimmed)) {
      return 'Only letters, numbers, dots and underscores allowed';
    }
    if (trimmed.startsWith('.') || trimmed.endsWith('.')) {
      return 'Username cannot start or end with a dot';
    }
    if (trimmed.contains('..')) {
      return 'Username cannot contain consecutive dots';
    }
    return null;
  }

  static String? displayName(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Display name is required';
    }
    final trimmed = value.trim();
    if (trimmed.length < AppConstants.displayNameMinLength) {
      return 'Display name is too short';
    }
    if (trimmed.length > AppConstants.displayNameMaxLength) {
      return 'Display name must be at most ${AppConstants.displayNameMaxLength} characters';
    }
    return null;
  }

  static String? bio(String? value) {
    if (value != null && value.length > AppConstants.bioMaxLength) {
      return 'Bio must be at most ${AppConstants.bioMaxLength} characters';
    }
    return null;
  }

  static String? caption(String? value) {
    if (value != null && value.length > AppConstants.captionMaxLength) {
      return 'Caption must be at most ${AppConstants.captionMaxLength} characters';
    }
    return null;
  }

  static String? comment(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Comment cannot be empty';
    }
    if (value.length > AppConstants.commentMaxLength) {
      return 'Comment must be at most ${AppConstants.commentMaxLength} characters';
    }
    return null;
  }

  static String? message(String? value) {
    if (value == null || value.trim().isEmpty) {
      return 'Message cannot be empty';
    }
    if (value.length > AppConstants.messageMaxLength) {
      return 'Message must be at most ${AppConstants.messageMaxLength} characters';
    }
    return null;
  }
}
