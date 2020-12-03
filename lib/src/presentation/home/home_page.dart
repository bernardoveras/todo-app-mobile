import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/common/components/button/button.dart';
import 'package:todo_app/src/common/components/textfield/search_textfield.dart';
import 'package:todo_app/src/common/components/textfield/textfield.dart';
import 'package:todo_app/src/common/widgets/home/nav-bar/home-nav-bar.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Navbar(),
          // Body
        ],
      ),
    );
  }
}
