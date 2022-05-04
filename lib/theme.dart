import 'package:flutter/material.dart';

class De_certTheme {
  ThemeData themeData = ThemeData(
    scaffoldBackgroundColor: Colors.transparent,
    primaryColor: Color(0xffA5FDF5),
    fontFamily: "Nunito",
    // ignore: prefer_const_constructors
    textTheme: TextTheme(
      headline1: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.bold,
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
        labelStyle: TextStyle(color: Colors.blue),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(style: BorderStyle.solid, color: Colors.blue),
        )),
  );
}
