import 'package:dartz/dartz.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/domain/login/entities/logged_user_info.dart';
import 'package:todo_app/src/domain/login/entities/login_credential.dart';
import 'package:todo_app/src/domain/login/errors/login_errors.dart';
import 'package:todo_app/src/domain/login/repositories/login_repository.dart';
import 'package:todo_app/src/domain/login/services/connectivity_service.dart';
import 'package:todo_app/src/domain/shared/errors.dart';

part 'login_with_email.g.dart';

abstract class LoginWithEmail {
  Future<Either<Failure, LoggedUserInfo>> call(LoginCredential credential);
}

@Injectable(singleton: false)
class LoginWithEmailImpl implements LoginWithEmail {
  final LoginRepository repository;
  final ConnectivityService service;

  LoginWithEmailImpl(this.repository, this.service);

  @override
  Future<Either<Failure, LoggedUserInfo>> call(
      LoginCredential credential) async {
    var result = await service.isOnline();

    if (result.isLeft()) {
      return result.map((r) => null);
    }

    if (!credential.isValidEmail) {
      return Left(ErrorLoginEmail(message: "E-mail inválido"));
    } else if (!credential.isValidPassword) {
      return Left(ErrorLoginEmail(message: "Senha inválida"));
    }

    return await repository.loginEmail(
      email: credential.email,
      password: credential.password,
    );
  }
}
