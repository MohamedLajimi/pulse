import 'package:fpdart/fpdart.dart';
import 'package:supabase_flutter/supabase_flutter.dart' show AuthState;

import 'package:pulse/core/error/exceptions.dart';
import 'package:pulse/core/error/failure.dart';
import 'package:pulse/core/types/typedefs.dart';
import 'package:pulse/features/auth/data/datasources/auth_remote_datasource.dart';
import 'package:pulse/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  AuthRepositoryImpl(this._dataSource);

  final AuthRemoteDataSource _dataSource;

  @override
  AsyncResult<String> signInWithEmail(String email, String password) async {
    try {
      final authRes = await _dataSource.signInWithEmail(email, password);
      return Right(authRes.user!.id);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<String> signUpWithEmail(String email, String password) async {
    try {
      final authRes = await _dataSource.signUpWithEmail(email, password);
      return Right(authRes.user!.id);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<void> signOut() async {
    try {
      await _dataSource.signOut();
      return const Right(null);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  AsyncResult<void> resetPassword(String email) async {
    try {
      await _dataSource.resetPassword(email);
      return const Right(null);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on ServerException catch (e) {
      return Left(ServerFailure(e.message, statusCode: e.statusCode));
    } catch (_) {
      return const Left(UnknownFailure());
    }
  }

  @override
  String? get currentUserId => _dataSource.currentUserId;

  @override
  Stream<AuthState> get authStateChanges => _dataSource.authStateChanges;
}
