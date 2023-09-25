import 'package:dart_5_days/pages/home_page.dart';
import 'package:dart_5_days/pages/login_page.dart';
import 'package:dart_5_days/utils/routes.dart';
import 'package:dart_5_days/widget/themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: AppThemeData.lightTheme(context),
      routes: {
        "/": (context) => HomePage(),
        MyRoutes.homeRoute: (context) => HomePage(),
        MyRoutes.loginRoute: (context) => LoginPage(),
      },
    );
  }
}
