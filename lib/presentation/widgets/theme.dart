import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData darkTheme(BuildContext context) => ThemeData(
        brightness: Brightness.dark,
        primaryColor: Colors.indigo[500],
        canvasColor: Colors.black,
        indicatorColor: Colors.white,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
      );
  static ThemeData lighttheme(BuildContext context) => ThemeData(
        primaryColor: const Color(0xffE4E4E4),
        canvasColor: Colors.white,
        indicatorColor: Colors.black,
        fontFamily: GoogleFonts.poppins().fontFamily,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 20),
        ),
      );

  static Color backgroundColor = const Color(0xffE4E4E4);
}
