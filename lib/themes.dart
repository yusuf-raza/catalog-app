import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyAppTheme {
  static final ThemeData _myLightThemeData = ThemeData(
      primarySwatch: Colors.deepPurple,
      textTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.black, fontSize: 20)));

  static ThemeData get myLightTheme => _myLightThemeData;

  static final ThemeData _myDarkThemeData = ThemeData(
    brightness: Brightness.dark,
  );

   static ThemeData get myDarkTheme => _myDarkThemeData;
}
