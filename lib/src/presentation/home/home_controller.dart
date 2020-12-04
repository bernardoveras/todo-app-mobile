import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/domain/entities/todo.dart';
import 'package:todo_app/src/infra/interfaces/i_todo_repository.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  ITodoRepository _repository;

  _HomeControllerBase(ITodoRepository repository) {
    _repository = repository;
    getAll();
  }

  @observable
  ObservableList<Todo> todayTodos = new ObservableList<Todo>();
  ObservableList<Todo> tomorrowTodos = new ObservableList<Todo>();
  ObservableList<Todo> allTodos = new ObservableList<Todo>();

  void getAll() async {
    var todayTodosList = await _repository.getTodayTodos();
    var tomorrowTodosList = await _repository.getTomorrowTodos();
    var allTodosList = await _repository.getAllTodos();

    allTodos = allTodosList.asObservable();
    tomorrowTodos = tomorrowTodosList.asObservable();
    todayTodos = todayTodosList.asObservable();
  }
}
