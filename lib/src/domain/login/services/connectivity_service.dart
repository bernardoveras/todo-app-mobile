import 'package:dartz/dartz.dart';
import 'package:todo_app/src/domain/shared/errors.dart';

abstract class ConnectivityService {
  Future<Either<Failure, Unit>> isOnline();
}
