import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/common/route.dart';
import 'package:todo_app/src/common/user.dart';
import 'package:todo_app/src/infra/services/authentication.dart';

class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    bool isLogged = Authentication.loadUser() != null;
    Future.delayed(Duration(seconds: 1)).then((v) {
      if (isLogged) {
        Modular.to.pushNamedAndRemoveUntil(AppRoute.home, (v) => false);
      } else
        Modular.to.pushNamedAndRemoveUntil(AppRoute.login, (v) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(
            Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
