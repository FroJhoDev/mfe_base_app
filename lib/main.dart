import 'package:flutter/material.dart';

import 'package:micro_core/app/base_app.dart';
import 'package:micro_core/app/microapp.dart';
import 'package:micro_core/app/micro_core_utils.dart';

import 'package:micro_app_login/app/micro_app_login_resolver.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget with BaseApp {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    super.registerRouters();

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      onGenerateRoute: super.generateRoute,
      initialRoute: '/login',
    );
  }

  @override
  Map<String, WidgetBuilderArgs> get baseRouters => {};

  @override
  List<Microapp> get microApps => [
    MicroAppLoginResolver()
  ];
}
