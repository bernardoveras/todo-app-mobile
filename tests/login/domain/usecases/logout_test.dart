import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:todo_app/src/domain/login/errors/login_errors.dart';
import 'package:todo_app/src/domain/login/repositories/login_repository.dart';
import 'package:todo_app/src/domain/login/usecases/logout.dart';

class LoginRepositoryMock extends Mock implements LoginRepository {}

main() {
  final repository = LoginRepositoryMock();
  final usecase = LogoutImpl(repository);
  test('Deve verificar se existe usuário logado', () async {
    when(repository.logout()).thenAnswer((_) async => Right(unit));
    var result = (await usecase()).fold((l) => null, (r) => r);
    expect(result, unit);
  });
  test('Deve retornar nulo se o usuário não estiver logado', () async {
    when(repository.logout()).thenAnswer((_) async => Left(ErrorLogout()));

    var result = (await usecase()).fold(id, id);
    expect(result, isA<ErrorLogout>());
  });
}
