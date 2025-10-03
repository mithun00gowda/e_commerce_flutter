import 'package:e_commerce/constants/app_colors.dart';
import 'package:flutter/material.dart';

class Styles{
  static ThemeData themeData({required bool isDarkTheme, required BuildContext context}){
    return ThemeData(
      scaffoldBackgroundColor: isDarkTheme ? AppColors.darkScaffoldColor : AppColors.lightScaffoldColor,
      cardColor: isDarkTheme ? Color.fromARGB(255, 13, 6, 37) : AppColors.lightCardcolor,
      brightness: isDarkTheme ? Brightness.dark : Brightness.light
    );
  }
}