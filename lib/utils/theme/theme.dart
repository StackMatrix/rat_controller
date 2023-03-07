import 'package:flutter/material.dart';

class ApplicationTheme {
  static final red = ThemeData.light().copyWith(
    // useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade200,
    backgroundColor: Colors.red,
    brightness: Brightness.dark,

    inputDecorationTheme: const InputDecorationTheme(
      isCollapsed: true,
      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.red, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      labelStyle: TextStyle(
        fontSize: 15.0,
        letterSpacing: 10,
        color: Colors.grey,
        backgroundColor: Colors.transparent,
      ),
    ),

    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.transparent,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey.shade100, backgroundColor: Colors.red,
        side: const BorderSide(color: Colors.grey, width: 1.0),
        elevation: 0.0,
      ),
    ),
  );

  static final orange = ThemeData.light().copyWith(
    // useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade200,
    backgroundColor: Colors.orange,
    brightness: Brightness.dark,

    inputDecorationTheme: const InputDecorationTheme(
      isCollapsed: true,
      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.orange, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      labelStyle: TextStyle(
        fontSize: 15.0,
        letterSpacing: 10,
        color: Colors.grey,
        backgroundColor: Colors.transparent,
      ),
    ),

    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.transparent,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey.shade100, backgroundColor: Colors.orange,
        side: const BorderSide(color: Colors.grey, width: 1.0),
        elevation: 0.0,
      ),
    ),
  );

  static final yellow = ThemeData.light().copyWith(
    // useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade200,
    backgroundColor: Colors.yellow,
    brightness: Brightness.dark,

    inputDecorationTheme: const InputDecorationTheme(
      isCollapsed: true,
      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.yellow, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      labelStyle: TextStyle(
        fontSize: 15.0,
        letterSpacing: 10,
        color: Colors.grey,
        backgroundColor: Colors.transparent,
      ),
    ),

    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.transparent,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey.shade100, backgroundColor: Colors.yellow,
        side: const BorderSide(color: Colors.grey, width: 1.0),
        elevation: 0.0,
      ),
    ),
  );

  static final green = ThemeData.light().copyWith(
    // useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade200,
    backgroundColor: Colors.green,
    brightness: Brightness.dark,

    inputDecorationTheme: const InputDecorationTheme(
      isCollapsed: true,
      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.green, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      labelStyle: TextStyle(
        fontSize: 15.0,
        letterSpacing: 10,
        color: Colors.grey,
        backgroundColor: Colors.transparent,
      ),
    ),

    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.transparent,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey.shade100, backgroundColor: Colors.green,
        side: const BorderSide(color: Colors.grey, width: 1.0),
        elevation: 0.0,
      ),
    ),
  );

  static final blue = ThemeData.light().copyWith(
    // useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade200,
    backgroundColor: const Color(0xFF5365E1),
    brightness: Brightness.dark,

    appBarTheme: AppBarTheme(
      color: Colors.teal, toolbarTextStyle: TextTheme(
        headline6: TextStyle(
          fontSize: 20.0,
          letterSpacing: 12.0,
          color: Colors.grey.shade100,
        ),
      ).bodyText2, titleTextStyle: TextTheme(
        headline6: TextStyle(
          fontSize: 20.0,
          letterSpacing: 12.0,
          color: Colors.grey.shade100,
        ),
      ).headline6,
    ),

    inputDecorationTheme: const InputDecorationTheme(
      isCollapsed: true,
      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Color(0xFF5365E1), width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      labelStyle: TextStyle(
        fontSize: 15.0,
        letterSpacing: 10,
        color: Colors.grey,
        backgroundColor: Colors.transparent,
      ),
    ),

    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.transparent,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey.shade100, backgroundColor: const Color(0xFF5365E1),
        side: const BorderSide(color: Colors.grey, width: 1.0),
        elevation: 0.0,
      ),
    ),

  );

  static final indigo = ThemeData.light().copyWith(
    // useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade200,
    backgroundColor: Colors.indigo,
    brightness: Brightness.dark,

    inputDecorationTheme: const InputDecorationTheme(
      isCollapsed: true,
      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.indigo, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      labelStyle: TextStyle(
        fontSize: 15.0,
        letterSpacing: 10,
        color: Colors.grey,
        backgroundColor: Colors.transparent,
      ),
    ),

    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.transparent,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey.shade100, backgroundColor: Colors.indigo,
        side: const BorderSide(color: Colors.grey, width: 1.0),
        elevation: 0.0,
      ),
    ),
  );

  static final purple = ThemeData.light().copyWith(
    // useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade200,
    backgroundColor: Colors.purple,
    brightness: Brightness.dark,

    inputDecorationTheme: const InputDecorationTheme(
      isCollapsed: true,
      contentPadding: EdgeInsets.symmetric(vertical: 15.0),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.purple, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      labelStyle: TextStyle(
        fontSize: 15.0,
        letterSpacing: 10,
        color: Colors.grey,
        backgroundColor: Colors.transparent,
      ),
    ),

    textSelectionTheme: const TextSelectionThemeData(
      selectionColor: Colors.transparent,
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey.shade100, backgroundColor: Colors.purple,
        side: const BorderSide(color: Colors.grey, width: 1.0),
        elevation: 0.0,
      ),
    ),
  );

  static final black = ThemeData.dark().copyWith(
    // useMaterial3: true,
    scaffoldBackgroundColor: Colors.grey.shade900,
    backgroundColor: Colors.black26,
    brightness: Brightness.dark,

    iconTheme: const IconThemeData(color: Colors.white70,),

    inputDecorationTheme: InputDecorationTheme(
      isCollapsed: true,
      contentPadding: const EdgeInsets.symmetric(vertical: 15.0),
      enabledBorder: const OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey, width: 1.0),
        borderRadius: BorderRadius.all(Radius.circular(8.0)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey.shade400, width: 1.0),
        borderRadius: const BorderRadius.all(Radius.circular(8.0)),
      ),
      labelStyle: const TextStyle(
        fontSize: 15.0,
        letterSpacing: 10,
        color: Colors.grey,
        backgroundColor: Colors.transparent,
      ),
    ),

    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: Colors.grey, backgroundColor: Colors.black12,
        side: const BorderSide(color: Colors.grey, width: 0.8),
        elevation: 0.0,
      ),
    ),
  );
}