import 'dart:async';

import 'package:todo_app/src/infra/login/models/user_model.dart';

abstract class LoginDataSource {
  Future<UserModel> loginEmail({String email, String password});
  Future<UserModel> currentUser();
  Future<void> logout();
}
