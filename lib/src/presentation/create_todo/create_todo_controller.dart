import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'create_todo_controller.g.dart';

@Injectable()
class CreateTodoController = _CreateTodoControllerBase
    with _$CreateTodoController;

abstract class _CreateTodoControllerBase with Store {}
