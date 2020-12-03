import 'package:flutter/material.dart';
import 'home-item-list.dart';

class HomeTodoList extends StatelessWidget {
  // final List todoList;

  // const HomeTodoList({ this.todoList}) ;
  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: BouncingScrollPhysics(),
      children: [
        HomeItemList(
          title: "Levar o Thor para correr",
          date: DateTime.now(),
          isDone: false,
        ),
      ],
    );
  }
}
