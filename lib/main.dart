import 'package:catalog_app/screens/home_page.dart';
import 'package:catalog_app/screens/login_screen.dart';
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
      //themeMode:ThemeMode.dark,
      //darkTheme: ThemeData(brightness: Brightness.light),
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        textTheme: GoogleFonts.latoTextTheme(),

      ),
     // home: HomePage(),
      initialRoute: MyRoutes.loginRoute,
      routes: {
        MyRoutes.homePageRoute: (context) => const HomePage(),
        MyRoutes.loginRoute : (context) => const LoginScreen()
      },
    );
  }
}
