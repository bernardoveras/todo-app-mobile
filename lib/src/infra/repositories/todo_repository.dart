import 'package:todo_app/src/domain/entities/todo.dart';
import 'package:todo_app/src/infra/interfaces/i_todo.dart';

class TodoRepository implements ITodo {
  @override
  Future<Todo> add(Todo item) {
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getAllTodos() {
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getTodayTodos() {
    throw UnimplementedError();
  }

  @override
  Future<List<Todo>> getTomorrowTodos() {
    throw UnimplementedError();
  }

  @override
  Future<Todo> maskAsDone(Todo item) {
    throw UnimplementedError();
  }

  @override
  Future<Todo> maskAsImportant(Todo item) {
    throw UnimplementedError();
  }
}
