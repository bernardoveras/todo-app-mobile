import 'package:dartz/dartz.dart';
import 'package:todo_app/src/domain/login/entities/logged_user_info.dart';
import 'package:todo_app/src/domain/shared/errors.dart';

abstract class LoginRepository {
  Future<Either<Failure, LoggedUserInfo>> loggedUser();
  Future<Either<Failure, Unit>> logout();
}
