import "package:flutter/material.dart";

class AppTheme {
  static Color primary = Colors.red.shade300;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.red.shade300,
      appBarTheme: AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      textButtonTheme:
          TextButtonThemeData(style: TextButton.styleFrom(primary: primary)));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.red.shade300,
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
  // TextButton Theme
}
