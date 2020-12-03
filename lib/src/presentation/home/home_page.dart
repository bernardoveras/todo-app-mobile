import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/common/widgets/home/list/home-list.dart';
import 'package:todo_app/src/common/widgets/home/nav-bar/home-nav-bar.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController>
    with TickerProviderStateMixin {
  bool isCheck = false;
  TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 3, vsync: this, initialIndex: 0);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Navbar(),
          HomeList(),
        ],
      ),
    );
  }
}
