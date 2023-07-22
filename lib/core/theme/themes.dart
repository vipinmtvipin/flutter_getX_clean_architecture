import 'package:flutter/material.dart';

class Themes {

  static final light = ThemeData.light().copyWith(
    visualDensity: VisualDensity.standard,
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.cyan,
        // This will be applied to the "back" icon
        iconTheme: IconThemeData(color: Colors.cyan),
        // This will be applied to the action icon buttons that locates on the right side
        actionsIconTheme: IconThemeData(color: Colors.cyan),
        centerTitle: false,
        elevation: 15,
        titleTextStyle: TextStyle(color: Colors.cyan)),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.cyan,
      textTheme: ButtonTextTheme.primary,
    ),
  );
  static final dark = ThemeData.dark().copyWith(
    appBarTheme: const AppBarTheme(
        backgroundColor: Colors.deepPurple,
        // This will be applied to the "back" icon
        iconTheme: IconThemeData(color: Colors.deepPurple),
        // This will be applied to the action icon buttons that locates on the right side
        actionsIconTheme: IconThemeData(color: Colors.deepPurple),
        centerTitle: false,
        elevation: 15,
        titleTextStyle: TextStyle(color: Colors.deepPurple)),
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.deepPurple,
      textTheme: ButtonTextTheme.primary,
    ),
  );
}