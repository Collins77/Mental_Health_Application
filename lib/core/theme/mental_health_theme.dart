import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme/app_colors.dart';

ThemeData BuildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    scaffoldBackgroundColor: AppColors.mentalDarkThemeColor, 
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.mentalDarkThemeColor,
      selectedItemColor: AppColors.mentalBrandColor,
      unselectedItemColor: AppColors.mentalOnboardTextColor,
    )
  );
}
