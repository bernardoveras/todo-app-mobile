import 'dart:io';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_app/src/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:todo_app/src/common/themes/app.theme.dart';
import 'package:todo_app/src/infra/shared/services/storage.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext context) {
    HttpClient client = super.createHttpClient(context);
    client.badCertificateCallback =
        (X509Certificate cert, String host, int port) => true;
    return client;
  }
}

void main() async {
  HttpOverrides.global = new MyHttpOverrides();
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: primaryColor,
        statusBarIconBrightness: Brightness.light,
        statusBarBrightness: Brightness.dark),
  );

  WidgetsFlutterBinding.ensureInitialized();
  Intl.defaultLocale = "pt_BR";

  await Storage.load();
  await Firebase.initializeApp();

  runApp(ModularApp(module: AppModule()));
}
