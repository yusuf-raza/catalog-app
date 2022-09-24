import 'package:catalog_app/screens/home_page.dart';
import 'package:catalog_app/screens/login_screen.dart';
import 'package:catalog_app/themes.dart';
import 'package:catalog_app/utils/routes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
      //custom light theme
      theme: MyAppTheme.myLightTheme,
      //theme mode set to system theme
      //themeMode: ThemeMode.system,
      //custom dark theme
      darkTheme: MyAppTheme.myDarkTheme,
      initialRoute: MyRoutes.homePageRoute,
      routes: {
        MyRoutes.homePageRoute: (context) => const HomePage(),
        MyRoutes.loginRoute: (context) => const LoginScreen()
      },
    );
  }
}
