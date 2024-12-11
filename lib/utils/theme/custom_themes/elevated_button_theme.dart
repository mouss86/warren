import 'package:flutter/material.dart';


/// -- Light and Dark Elevated Button Themes
class TElevatedButtonTheme {
  TElevatedButtonTheme._();// to avoid creating instances

  /// -- Light Theme
  static ElevatedButtonThemeData lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.green,
      disabledForegroundColor: Colors.grey,
      disabledBackgroundColor: Colors.grey,
      side: const BorderSide(color: Colors.green),
      padding: const EdgeInsets.symmetric(vertical: 19),
      textStyle: const TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w700),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))
      

    ),
    );

      static final darElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      backgroundColor: Colors.green,
      disabledForegroundColor: Colors.lightGreenAccent,
      disabledBackgroundColor: Colors.lightGreenAccent,
      side: const BorderSide(color: Colors.green),
      padding: const EdgeInsets.symmetric(vertical: 19),
      textStyle: const TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w700),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))
      

    ),
    );
}