import 'package:flutter/material.dart';

import 'create_todo_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'create_todo_page.dart';

class CreateTodoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        $CreateTodoController,
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          Modular.initialRoute,
          child: (_, args) => CreateTodoPage(),
        ),
      ];

  static Inject get to => Inject<CreateTodoModule>.of();
}
