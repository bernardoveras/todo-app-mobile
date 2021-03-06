import 'package:todo_app/src/domain/todo/entities/todo.dart';

abstract class ITodoRepository {
  Future<List<Todo>> getTodayTodos();
  Future<List<Todo>> getTomorrowTodos();
  Future<List<Todo>> getAllTodos();
  Future<Todo> add(Todo item);
  Future<Todo> markAsDone(Todo item);
}
