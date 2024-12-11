import 'package:flutter/material.dart';


/* -- Light & Dark outlined Button Themes --*/

class TOutlinedButtonTheme {
  TOutlinedButtonTheme._();

  /* -- Light Theme -- */

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.black,
      side: const BorderSide(color: Colors.green),
      textStyle: const TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.w700),
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 21),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  );

   static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      elevation: 0,
      foregroundColor: Colors.white,
      side: const BorderSide(color: Colors.greenAccent),
      textStyle: const TextStyle(fontSize: 17, color: Colors.white, fontWeight: FontWeight.w700),
      padding: const EdgeInsets.symmetric(vertical: 17, horizontal: 21),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
    ),
  );
}