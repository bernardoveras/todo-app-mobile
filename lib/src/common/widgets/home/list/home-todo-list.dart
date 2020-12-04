import 'package:flutter/material.dart';
import 'package:todo_app/src/common/route.dart';
import 'package:todo_app/src/domain/entities/todo.dart';
import 'home-item-list.dart';

class HomeTodoList extends StatelessWidget {
  final List<Todo> todoList;

  const HomeTodoList(this.todoList);

  @override
  Widget build(BuildContext context) {
    return todoList == null
        ? CircularProgressIndicator(
            valueColor: AlwaysStoppedAnimation<Color>(
              Theme.of(context).primaryColor,
            ),
          )
        : todoList.length < 1
            ? Padding(
                padding: EdgeInsets.only(top: 85),
                child: Column(
                  children: [
                    Image.asset(
                      ImageRoute.empty,
                      height: 170,
                    ),
                    SizedBox(height: 35),
                    Text(
                      "Nada por aqui...",
                      style: TextStyle(
                        color: Theme.of(context).primaryColor,
                        fontFamily: "InterBold",
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              )
            : ListView.builder(
                shrinkWrap: true,
                physics: BouncingScrollPhysics(),
                itemCount: todoList.length,
                itemBuilder: (_, index) {
                  return HomeItemList(
                    title: todoList[index].title ?? "",
                    date: todoList[index].date,
                    isDone: todoList[index].done,
                    changeDone: (value) {},
                  );
                },
              );
  }
}
