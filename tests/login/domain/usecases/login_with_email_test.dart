import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_app/src/domain/login/entities/login_credential.dart';
import 'package:todo_app/src/domain/login/errors/login_errors.dart';
import 'package:todo_app/src/domain/login/repositories/login_repository.dart';
import 'package:todo_app/src/domain/login/services/connectivity_service.dart';
import 'package:todo_app/src/domain/login/usecases/login_with_email.dart';
import 'package:todo_app/src/domain/shared/errors.dart';
import 'package:todo_app/src/infra/login/models/user_model.dart';

class LoginRepositoryMock extends Mock implements LoginRepository {}

class ConnectivityServiceMock extends Mock implements ConnectivityService {}

class FirebaseUserMock extends Mock implements User {}

main() {
  final repository = LoginRepositoryMock();
  final service = ConnectivityServiceMock();
  final usecase = LoginWithEmailImpl(repository, service);

  setUpAll(() {
    when(service.isOnline()).thenAnswer((_) async => Right(unit));
  });

  test('deve verificar se o e-mail não é válido', () async {
    var result = await usecase(
        LoginCredential.withEmailAndPassword(email: "", password: ""));
    expect(result.leftMap((l) => l is ErrorLoginEmail), Left(true));
  });

  test('deve verificar se a senha não é válida', () async {
    var result = await usecase(LoginCredential.withEmailAndPassword(
        email: "bernardo@vvssistemas.com.br", password: ""));
    expect(result.leftMap((l) => l is ErrorLoginEmail), Left(true));
  });

  test('deve consumir o repositório loginEmail', () async {
    var user = UserModel(name: "null");
    when(repository.loginEmail(
            email: anyNamed('email'), password: anyNamed('password')))
        .thenAnswer((_) async => Right(user));
    var result = await usecase(LoginCredential.withEmailAndPassword(
        email: "bernardo@vvssistemas.com.br", password: "123456"));

    expect(result, Right(user));
  });

  test('deve retornar erro quando offline', () async {
    when(service.isOnline()).thenAnswer((_) async => Left(ConnectionError()));

    var result = await usecase(LoginCredential.withEmailAndPassword(
        email: "bernardo@vvssistemas.com.br", password: "123456"));
    expect(result.leftMap((l) => l is ConnectionError), Left(true));
  });
}
