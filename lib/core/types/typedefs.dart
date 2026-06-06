import 'package:fpdart/fpdart.dart';
import 'package:pulse/core/error/failure.dart';

typedef Result<T> = Either<Failure, T>;

typedef AsyncResult<T> = Future<Result<T>>;

typedef Json = Map<String, dynamic>;
