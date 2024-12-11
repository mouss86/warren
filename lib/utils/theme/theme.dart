import 'package:flutter/material.dart';
import 'package:warren/utils/theme/custom_themes/appbar_theme.dart';
import 'package:warren/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:warren/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:warren/utils/theme/custom_themes/chip_theme.dart';
import 'package:warren/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:warren/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:warren/utils/theme/custom_themes/text_field_theme.dart';
import 'package:warren/utils/theme/custom_themes/text_theme.dart';


class TMyAppTheme{
  TMyAppTheme._(); // _ signifie le signe " privé"

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Popins',
    brightness: Brightness.light,
    primaryColor: Colors.greenAccent,
    textTheme: TTextTheme.lightTextTheme,
    chipTheme: TChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: TMyAppBarTheme.lightMyAppBarTheme,
    checkboxTheme: TCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.lightInpDecorationTheme,
  );
  
  static ThemeData darkTheme = ThemeData(
     useMaterial3: true,
    fontFamily: 'Popins',
    brightness: Brightness.dark,
    primaryColor: Colors.greenAccent,
    textTheme: TTextTheme.darkTextTheme,
    chipTheme: TChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: TMyAppBarTheme.darkMyAppBarTheme,
    checkboxTheme: TCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme: TBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: TElevatedButtonTheme.darElevatedButtonTheme,
    outlinedButtonTheme: TOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: TTextFormFieldTheme.darkInpDecorationTheme,
    
  );
  
  
}