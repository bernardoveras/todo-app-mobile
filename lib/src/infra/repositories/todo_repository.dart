import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/common/user.dart';
import 'package:todo_app/src/domain/entities/todo.dart';
import 'package:todo_app/src/infra/interfaces/i_todo_repository.dart';

part 'todo_repository.g.dart';

@Injectable()
class TodoRepository implements ITodoRepository {
  @override
  Future<List<Todo>> getAllTodos() async {
    Response response = await get("v1/todos/undone/");
    return (response.data as List)
        .map((todos) => Todo.fromJson(todos))
        .toList();
  }

  @override
  Future<List<Todo>> getTodayTodos() async {
    Response response = await get("v1/todos/undone/today");
    return (response.data as List)
        .map((todos) => Todo.fromJson(todos))
        .toList();
  }

  @override
  Future<List<Todo>> getTomorrowTodos() async {
    Response response = await get("v1/todos/undone/tomorrow");
    return (response.data as List)
        .map((todos) => Todo.fromJson(todos))
        .toList();
  }

  @override
  Future<Todo> markAsDone(Todo item) async {
    Response response = await post("v1/todos/mark-as-done", item);
    return Todo.fromJson(response.data["data"]);
  }

  @override
  Future<Todo> add(Todo item) async {
    Response response = await post("v1/todos", item);
    return Todo.fromJson(response.data["data"]);
  }
}

Future<Response> get(String endPoint) async {
  var url = 'https://10.0.2.2:5001/$endPoint';
  Response response = await Dio().get(
    url,
    options: Options(
      headers: {HttpHeaders.authorizationHeader: "Bearer ${user.token}"},
    ),
  );
  return response;
}

Future<Response> post(String endPoint, dynamic data) async {
  var url = 'https://10.0.2.2:5001/$endPoint';
  try {
    Response response = await Dio().post(
      url,
      data: data,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: "Bearer ${user.token}"},
      ),
    );
    return response;
  } catch (e) {
    return null;
  }
}

Future<Response> put(String endPoint, dynamic data) async {
  var url = 'https://10.0.2.2:5001/$endPoint';
  try {
    Response response = await Dio().put(
      url,
      data: data,
      options: Options(
        headers: {HttpHeaders.authorizationHeader: "Bearer ${user.token}"},
      ),
    );
    return response;
  } catch (e) {
    return null;
  }
}
