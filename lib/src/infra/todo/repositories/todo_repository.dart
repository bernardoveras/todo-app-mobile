import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/domain/todo/entities/todo.dart';
import 'package:todo_app/src/infra/shared/services/http_service.dart';
import 'package:todo_app/src/infra/todo/interfaces/i_todo_repository.dart';

part 'todo_repository.g.dart';

@Injectable()
class TodoRepository implements ITodoRepository {
  @override
  Future<List<Todo>> getAllTodos() async {
    Response response = await HttpService.get("v1/todos/undone/");
    return (response.data as List)
        .map((todos) => Todo.fromJson(todos))
        .toList();
  }

  @override
  Future<List<Todo>> getTodayTodos() async {
    Response response = await HttpService.get("v1/todos/undone/today");
    return (response.data as List)
        .map((todos) => Todo.fromJson(todos))
        .toList();
  }

  @override
  Future<List<Todo>> getTomorrowTodos() async {
    Response response = await HttpService.get("v1/todos/undone/tomorrow");
    return (response.data as List)
        .map((todos) => Todo.fromJson(todos))
        .toList();
  }

  @override
  Future<Todo> markAsDone(Todo item) async {
    Response response = await HttpService.post("v1/todos/mark-as-done", item);
    return Todo.fromJson(response.data["data"]);
  }

  @override
  Future<Todo> add(Todo item) async {
    Response response = await HttpService.post("v1/todos", item);
    return Todo.fromJson(response.data["data"]);
  }
}
