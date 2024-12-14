import 'package:ecommerceapp/utils/theme/custom_themes/appbar_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/buttom_sheet_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/chip_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/text_field_theme.dart';
import 'package:ecommerceapp/utils/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';

class EcommerceTheme {
  EcommerceTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: MyTextTheme.lightTextTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: MyAppBar.lightAppBarTheme,
    bottomSheetTheme: MyBottomSheetTheme.lightBottomSheetTheme,
    checkboxTheme: MyCheckBoxTheme.lightCheckBoxTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.lightOutlinedButtonTheme,
    chipTheme: MyChipTheme.lightChipTheme,
    inputDecorationTheme: MyTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: MyTextTheme.darkTextTheme,
    elevatedButtonTheme: MyElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: MyAppBar.darkAppBarTheme,
    bottomSheetTheme: MyBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: MyCheckBoxTheme.darkCheckBoxTheme,
    outlinedButtonTheme: MyOutlinedButtonTheme.darkOutlinedButtonTheme,
    chipTheme: MyChipTheme.darkChipTheme,
    inputDecorationTheme: MyTextFieldTheme.darkInputDecorationTheme,
  );
}
