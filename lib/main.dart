import 'package:date_time_picker/date_time_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/src/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/common/themes/app.theme.dart';

void main() async {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: primaryColor,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark),
  );
  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = "pt_BR";
  await Firebase.initializeApp();

  runApp(ModularApp(module: AppModule()));
}
