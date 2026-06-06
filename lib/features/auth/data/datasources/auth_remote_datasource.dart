import 'package:supabase_flutter/supabase_flutter.dart' as supabase;

import 'package:pulse/core/error/exceptions.dart';

abstract class AuthRemoteDataSource {
  Future<supabase.AuthResponse> signInWithEmail(String email, String password);
  Future<supabase.AuthResponse> signUpWithEmail(String email, String password);
  Future<void> signOut();
  Future<void> resetPassword(String email);
  String? get currentUserId;
  Stream<supabase.AuthState> get authStateChanges;
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl(this._client);

  final supabase.SupabaseClient _client;

  supabase.GoTrueClient get _auth => _client.auth;

  @override
  Future<supabase.AuthResponse> signInWithEmail(
    String email,
    String password,
  ) async {
    try {
      return await _auth.signInWithPassword(email: email, password: password);
    } on supabase.AuthException catch (e) {
      throw AuthException(_mapAuthError(e.message));
    } catch (_) {
      throw const ServerException('Unable to sign in. Please try again.');
    }
  }

  @override
  Future<supabase.AuthResponse> signUpWithEmail(
    String email,
    String password,
  ) async {
    try {
      return await _auth.signUp(email: email, password: password);
    } on supabase.AuthException catch (e) {
      throw AuthException(_mapAuthError(e.message));
    } catch (_) {
      throw const ServerException(
        'Unable to create account. Please try again.',
      );
    }
  }

  @override
  Future<void> signOut() async {
    try {
      await _auth.signOut();
    } on supabase.AuthException catch (_) {
      throw const AuthException('Unable to sign out. Please try again.');
    } catch (_) {
      throw const ServerException('Unable to sign out. Please try again.');
    }
  }

  @override
  Future<void> resetPassword(String email) async {
    try {
      await _auth.resetPasswordForEmail(email);
    } on supabase.AuthException catch (_) {
      throw const AuthException('Unable to send reset link. Please try again.');
    } catch (_) {
      throw const ServerException(
        'Unable to send reset link. Please try again.',
      );
    }
  }

  @override
  String? get currentUserId => _auth.currentUser?.id;

  @override
  Stream<supabase.AuthState> get authStateChanges => _auth.onAuthStateChange;

  String _mapAuthError(String supabaseMessage) {
    final lower = supabaseMessage.toLowerCase();

    if (lower.contains('invalid login credentials') ||
        lower.contains('invalid_credentials')) {
      return 'Incorrect email or password.';
    }
    if (lower.contains('email not confirmed')) {
      return 'Please verify your email before signing in.';
    }
    if (lower.contains('user already registered') ||
        lower.contains('already been registered')) {
      return 'An account with this email already exists.';
    }
    if (lower.contains('rate limit') || lower.contains('too many requests')) {
      return 'Too many attempts. Please wait a moment and try again.';
    }
    if (lower.contains('email') && lower.contains('invalid')) {
      return 'Please enter a valid email address.';
    }
    if (lower.contains('password') &&
        (lower.contains('short') || lower.contains('weak'))) {
      return 'Password is too weak. Please choose a stronger password.';
    }
    if (lower.contains('network') || lower.contains('connection')) {
      return 'No internet connection. Please check your network.';
    }

    return 'Something went wrong. Please try again.';
  }
}
