import 'package:flutter/material.dart';

class TColors {
  TColors._();

// app Basic Colors
  static const Color primary = Color(0xFF388E3C);
  static const Color secondary = Color(0xFF388E3C);
  static const Color accent = Color(0xFF388E3C);
  static const Color yellow = Color(0xFFFFEB3B); // Jaune classique
  static const Color amber = Color(0xFFFFC107); // Amber

  // Gradient Colors

  static const Gradient linerGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
    Color(0xffff9a9e),
    Color(0xfffad0c4),
    Color(0xfffad0c4)

  ],);

  // Text Colors
  static const Color textPrimary = Color(0xFF333333);
  static const Color textSecondary = Color(0xFF6c757D);
  static const Color textWhite = Colors.white;

// Background Colors
  static const Color light = Color(0xFFF6F6F6);
  static const Color dark = Color(0xFF272727);
  static const Color primaryBackgrund = Color(0xFFF3F5FF);

  // Background Containers Colors
  static const Color lightContainer = Color(0xFFF6F6F6);
 static const Color darkContainer = Color.fromRGBO(255, 255, 255, 0.1);

 // Border Colors
  static const Color borderPrimary = Color(0xFFD9D9D9);
  static const Color borderSecondary = Color(0xFFF6F6F6);

  // Error and Validation Colors

  static const Color error = Color(0xFFD32F2F);
  static const Color succes = Color(0xFF4b68ff);
  static const Color warning = Color(0xFFF57C00);
  static const Color info = Color(0xFF1976D2);

// Neutral Shades 

static const Color black = Color(0xFF232323);
  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFFF57C00);
  static const Color grey = Color(0xFF1976D2);

  static var white;

  
 





}