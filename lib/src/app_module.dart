import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/src/app_widget.dart';
import 'package:todo_app/src/presentation/login/login_module.dart';
import 'common/route.dart';
import 'presentation/create_todo/create_todo_page.dart';
import 'presentation/home/home_module.dart';
import 'presentation/splash/splash_screen.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(
          AppRoute.splashScreen,
          child: (context, args) => SplashScreenPage(),
        ),
        ModularRouter(AppRoute.home, module: HomeModule()),
        ModularRouter(AppRoute.login, module: LoginModule()),
        ModularRouter(
          AppRoute.createTodo,
          child: (context, args) => CreateTodoPage(),
        ),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
