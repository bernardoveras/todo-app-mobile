import 'dart:async';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/domain/login/errors/login_errors.dart';
import 'package:todo_app/src/infra/login/datasources/login_datasource.dart';
import 'package:todo_app/src/infra/login/models/user_model.dart';

part 'firebase_datasource.g.dart';

@Injectable(singleton: false)
class FirebaseDataSourceImpl implements LoginDataSource {
  final FirebaseAuth auth;

  FirebaseDataSourceImpl(this.auth);

  @override
  Future<UserModel> loginEmail({String email, String password}) async {
    var result =
        await auth.signInWithEmailAndPassword(email: email, password: password);
    var user = result.user;
    return UserModel(
      name: user.displayName,
      email: user.email,
      picture: user.photoURL,
    );
  }

  @override
  Future<UserModel> currentUser() async {
    var user = auth.currentUser;

    if (user == null) throw ErrorGetLoggedUser();

    return UserModel(
      name: user.displayName,
      email: user.email,
      picture: user.photoURL,
    );
  }

  @override
  Future<void> logout() async {
    return await auth.signOut();
  }
}
