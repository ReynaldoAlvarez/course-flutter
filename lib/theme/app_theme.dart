import "package:flutter/material.dart";

class AppTheme {
  static Color primary = Colors.red.shade300;
  static Color secondary = Colors.teal.shade300;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: Colors.red.shade300,
      appBarTheme: AppBarTheme(
        color: primary,
        elevation: 0,
      ),
      textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(backgroundColor: primary)),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: primary,
        elevation: 0,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              backgroundColor: primary,
              shape: const StadiumBorder(),
              elevation: 0)),
      inputDecorationTheme: InputDecorationTheme(
          floatingLabelStyle: TextStyle(color: primary),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: secondary),
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
          ),
          border: const OutlineInputBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  topRight: Radius.circular(10)))));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: Colors.red.shade300,
    appBarTheme: AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    scaffoldBackgroundColor: Colors.black,
  );
}
