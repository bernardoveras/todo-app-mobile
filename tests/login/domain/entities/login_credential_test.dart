import 'package:flutter_test/flutter_test.dart';
import 'package:todo_app/src/domain/login/entities/login_credential.dart';

main() {
  group("Deve verificar se o campo é válido ou não", () {
    test('email e senha', () {
      expect(
        LoginCredential.withEmailAndPassword(email: "", password: "")
            .isValidEmail,
        false,
      );
      expect(
        LoginCredential.withEmailAndPassword(email: "bernardo", password: "")
            .isValidEmail,
        false,
      );
      expect(
        LoginCredential.withEmailAndPassword(
                email: "bernardo@vvssistemas.com.br", password: "")
            .isValidEmail,
        true,
      );
    });
  });
}
