import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/common/components/button/button.dart';
import 'package:todo_app/src/common/route.dart';
import 'login_controller.dart';

class LoginPage extends StatefulWidget {
  final String title;
  const LoginPage({Key key, this.title = "Login"}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends ModularState<LoginPage, LoginController> {
  //use 'controller' variable to access controller
  final scaffoldKey = new GlobalKey<ScaffoldState>();
  var busy = false;

  handleSignIn() {
    setState(() {
      busy = true;
    });
    controller
        .loginWithGoogle()
        .then((data) => onSuccess())
        .catchError((error) => onError())
        .whenComplete(() => onComplete());
  }

  onSuccess() {
    Modular.to.pushNamedAndRemoveUntil(AppRoute.home, (v) => true);
  }

  onError() {
    var snackbar = new SnackBar(content: Text("Falha no login"));
    scaffoldKey.currentState.showSnackBar(snackbar);
  }

  onComplete() {
    setState(() {
      busy = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Theme.of(context).primaryColor,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 180, left: 25, right: 25),
          child: Center(
            child: Column(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.fact_check, color: Colors.white, size: 100),
                    SizedBox(height: 20),
                    Text(
                      "To-do",
                      style: TextStyle(
                        fontFamily: "InterBold",
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Bem-vindo ao to-do!\nEntre com sua conta e se divirta! ;)",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "InterMedium",
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30),
                KaytaButton(
                  "Login com Google",
                  image: "assets/images/google.png",
                  onTap: () {},
                  invertColors: true,
                  busy: busy,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
