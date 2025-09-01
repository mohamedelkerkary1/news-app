import 'package:flutter/material.dart';
import 'package:newsapp/core/theme_manager/color_pallate.dart';

abstract class AppThemeManager{
   static ThemeData lightTheme = ThemeData(
    scaffoldBackgroundColor: ColorPallete.scaffoldBackGround,
    appBarTheme: AppBarTheme(
      centerTitle: true,
      backgroundColor: Colors.transparent,
      iconTheme: IconThemeData(
        size: 35,
      ),
      titleTextStyle: TextStyle(
        fontWeight: FontWeight.w500,
        fontSize: 20,
        color: ColorPallete.generalTextColor
      )
    )
  );
}