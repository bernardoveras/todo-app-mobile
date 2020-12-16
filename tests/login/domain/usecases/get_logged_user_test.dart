import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_app/src/domain/login/entities/logged_user_info.dart';
import 'package:todo_app/src/domain/login/errors/login_errors.dart';
import 'package:todo_app/src/domain/login/repositories/login_repository.dart';
import 'package:todo_app/src/domain/login/usecases/get_logged_user.dart';
import 'package:todo_app/src/infra/login/models/user_model.dart';

class LoginRepositoryMock extends Mock implements LoginRepository {}

class FirebaseUserMock extends Mock implements User {}

main() {
  final repository = LoginRepositoryMock();
  final usecase = GetLoggedUserImpl(repository);
  test('deve verificar se existe usuário logado', () async {
    when(repository.loggedUser()).thenAnswer(
        (_) async => Right(UserModel(name: "", email: "", picture: "")));
    var result = (await usecase()).fold((l) => null, (r) => r);
    expect(result, isA<LoggedUserInfo>());
  });

  test('deve retornar nulo se o usuário não estiver logado', () async {
    when(repository.loggedUser())
        .thenAnswer((_) async => Left(ErrorGetLoggedUser()));

    var result = (await usecase()).fold((l) => null, (r) => r);
    expect(result, null);
  });
}
