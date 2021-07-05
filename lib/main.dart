import 'package:flutter/material.dart';
import 'Pages/login_page.dart';
import 'Pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        themeMode: ThemeMode.light,
        theme: ThemeData(primarySwatch: Colors.deepPurple),
        darkTheme: ThemeData(brightness: Brightness.dark),
        initialRoute: "/Home",
        routes: {
          "/": (context) => LoginPage(),
          "/Home": (context) => HomePage(),
          "/Login": (context) => LoginPage(),
        });
  }
}
