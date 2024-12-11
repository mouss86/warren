import 'package:flutter/material.dart';

class TMyAppBarTheme {
  TMyAppBarTheme._(); // Constructeur privé pour éviter l'instanciation

  /// -- Light Theme
  static const AppBarTheme lightMyAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation:0 ,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 25),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 19,
      fontWeight: FontWeight.w700,
    ),
  );

  /// -- Dark Theme
  static const AppBarTheme darkMyAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation:0 ,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: Colors.black),
    actionsIconTheme: IconThemeData(color: Colors.black, size: 25),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 19,
      fontWeight: FontWeight.w700,
    ),
  );
}




