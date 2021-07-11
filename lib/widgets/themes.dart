import 'package:flutter/material.dart';
import '../main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.deepPurple,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.white,
      canvasColor: lightGrey,
      buttonColor: darkishBlue,
      accentColor: darkishBlue,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ));

  static ThemeData darkTheme(BuildContext context) => ThemeData(
      primarySwatch: white,
      brightness: Brightness.dark,
      fontFamily: GoogleFonts.poppins().fontFamily,
      cardColor: Colors.grey[850],
      canvasColor: darkGrey,
      buttonColor: lightBlue,
      accentColor: lightGrey,
      appBarTheme: AppBarTheme(
        color: Colors.black,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        textTheme: Theme.of(context).textTheme,
      ));

  //colors

  static Color lightGrey = Color(0xfff5f5f5);
  static Color darkGrey = Colors.grey[800];
  static Color darkishBlue = Color(0xff403b58);
  static Color lightBlue = Vx.indigo500;
}
