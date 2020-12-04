import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';
import 'package:todo_app/src/common/widgets/home/list/home-list.dart';
import 'package:todo_app/src/common/widgets/home/nav-bar/home-nav-bar.dart';
import 'package:todo_app/src/presentation/create_todo/create_todo_page.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController>
    with TickerProviderStateMixin {
  bool isCheck = false;

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_) {
      return Scaffold(
        resizeToAvoidBottomInset: true,
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            showMaterialModalBottomSheet(
              context: context,
              builder: (_) => CreateTodoPage(),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
              ),
            );
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Navbar(),
              HomeList(
                todayTodos: controller.todayTodos,
                allTodos: controller.allTodos,
                tomorrowTodos: controller.tomorrowTodos,
              ),
            ],
          ),
        ),
      );
    });
  }
}
