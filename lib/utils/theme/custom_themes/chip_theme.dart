import 'package:flutter/material.dart';

class TChipTheme {
  TChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.6),
    labelStyle:  const TextStyle(color: Colors.black),
    selectedColor: Colors.green,
    padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 13),
    checkmarkColor: Colors.white,
  );

  static ChipThemeData darkChipTheme = ChipThemeData(
    disabledColor: Colors.grey.withOpacity(0.6),
    labelStyle:  const TextStyle(color: Colors.white),
    selectedColor: Colors.green,
    padding: const EdgeInsets.symmetric(horizontal: 13.0, vertical: 13),
    checkmarkColor: Colors.white,
  );
}