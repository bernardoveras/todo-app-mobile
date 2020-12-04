import 'package:todo_app/src/domain/entities/todo.dart';

abstract class ITodoRepository {
  Future<List<Todo>> getTodayTodos();
  Future<List<Todo>> getTomorrowTodos();
  Future<List<Todo>> getAllTodos();
  Future<Todo> add(Todo item);
  Future<Todo> maskAsDone(Todo item);
  Future<Todo> maskAsImportant(Todo item);
}
