import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/domain/entities/todo.dart';
import 'package:todo_app/src/infra/interfaces/i_todo_repository.dart';

part 'todo_repository.g.dart';

@Injectable()
class TodoRepository implements ITodoRepository {
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

  @override
  Future<Todo> add(Todo item) {
    throw UnimplementedError();
  }
}
