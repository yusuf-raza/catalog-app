import 'package:catalog_app/screens/home_page.dart';
import 'package:catalog_app/screens/login_screen.dart';
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
        //fontFamily: GoogleFonts.lato().fontFamily,
        textTheme: GoogleFonts.latoTextTheme(),
        //fontFamily: GoogleFonts.latoTextTheme().bodyText1!.fontFamily
      ),
     // home: HomePage(),
      initialRoute: "/login",
      routes: {
        "/home": (context) => HomePage(),
        "/login": (context) => LoginScreen()
      },
    );
  }
}
