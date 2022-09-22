import 'package:catalog_app/screens/home_page.dart';
import 'package:catalog_app/screens/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Catalog App',
      //themeMode:ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
     // home: HomePage(),
      routes: {
        "/": (context) => HomePage(),
        "/login": (context) => LoginScreen()
      },
    );
  }
}
