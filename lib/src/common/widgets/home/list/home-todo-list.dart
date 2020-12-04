import 'package:flutter/material.dart';
import 'package:todo_app/src/domain/entities/todo.dart';
import 'home-item-list.dart';

class HomeTodoList extends StatelessWidget {
  final List<Todo> todoList;

  const HomeTodoList(this.todoList);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
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
