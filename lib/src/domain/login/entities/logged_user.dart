import 'package:equatable/equatable.dart';

class LoggedUser extends Equatable {
  final String name;
  final String picture;
  final String email;
  final String token;

  const LoggedUser({this.email, this.name, this.picture, this.token});

  @override
  List<Object> get props => [email, name, picture, token];
}
