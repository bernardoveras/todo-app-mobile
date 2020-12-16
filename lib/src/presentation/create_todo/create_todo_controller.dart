import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/domain/todo/entities/todo.dart';
import 'package:todo_app/src/infra/todo/interfaces/i_todo_repository.dart';
part 'create_todo_controller.g.dart';

@Injectable()
class CreateTodoController = _CreateTodoControllerBase
    with _$CreateTodoController;

abstract class _CreateTodoControllerBase with Store {
  ITodoRepository _repository;
  _CreateTodoControllerBase(ITodoRepository repository) {
    _repository = repository;
  }

  @observable
  String title;
  @action
  setTitle(String value) => title = value;

  @observable
  DateTime date;
  @action
  setDate(DateTime value) => date = value;

  @computed
  Todo get currentTodo => Todo(title: title, date: date, important: false);

  Future addItem() async {
    await _repository.add(currentTodo);
  }
}
