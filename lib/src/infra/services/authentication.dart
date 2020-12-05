import 'dart:convert';
import 'package:todo_app/src/common/user.dart';
import 'package:todo_app/src/infra/services/storage.dart';

abstract class Authentication {
  static IUser loadUser() {
    var userData = Storage.getString('user_credentials');

    if (userData != null) {
      var credential = jsonDecode(userData) as Map<String, dynamic>;

      if (credential != null) {
        return user.fromJson(credential);
      }
    }
    return null;
  }
}
