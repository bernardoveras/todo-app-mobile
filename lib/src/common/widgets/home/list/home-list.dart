import 'package:flutter/material.dart';
import 'package:todo_app/src/domain/todo/entities/todo.dart';
import 'home-todo-list.dart';

class HomeList extends StatelessWidget {
  final List<Todo> allTodos;
  final List<Todo> todayTodos;
  final List<Todo> tomorrowTodos;

  const HomeList({
    @required this.todayTodos,
    @required this.tomorrowTodos,
    @required this.allTodos,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 25, right: 25, top: 50),
      child: DefaultTabController(
        length: 3,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              child: TabBar(
                isScrollable: true,
                unselectedLabelColor: Colors.grey,
                unselectedLabelStyle: TextStyle(
                  fontFamily: 'InterBold',
                  fontSize: 15,
                ),
                labelColor: Theme.of(context).primaryColor,
                labelStyle: TextStyle(
                  fontFamily: 'InterBold',
                  fontSize: 15,
                ),
                indicatorColor: Theme.of(context).primaryColor,
                tabs: [
                  Tab(text: "HOJE"),
                  Tab(text: "AMANHÃ"),
                  Tab(text: "TODAS"),
                ],
              ),
            ),
            Container(
              height: MediaQuery.of(context).size.height - 298,
              child: TabBarView(
                physics: BouncingScrollPhysics(),
                children: [
                  HomeTodoList(todayTodos),
                  HomeTodoList(tomorrowTodos),
                  HomeTodoList(allTodos),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
