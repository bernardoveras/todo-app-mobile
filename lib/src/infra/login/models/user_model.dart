import 'package:meta/meta.dart';
import 'package:todo_app/src/domain/login/entities/logged_user.dart';
import 'package:todo_app/src/domain/login/entities/logged_user_info.dart';

class UserModel extends LoggedUser implements LoggedUserInfo {
  UserModel({@required String name, String email, String picture})
      : super(name: name, email: email, picture: picture);

  LoggedUser toLoggedUser() => this;
}
