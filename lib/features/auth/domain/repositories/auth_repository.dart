import 'package:supabase_flutter/supabase_flutter.dart';

import 'package:pulse/core/types/typedefs.dart';

abstract class AuthRepository {
  AsyncResult<String> signInWithEmail(String email, String password);
  AsyncResult<String> signUpWithEmail(String email, String password);
  AsyncResult<void> signOut();
  AsyncResult<void> resetPassword(String email);
  String? get currentUserId;
  Stream<AuthState> get authStateChanges;
}
