import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mental_health_app/core/theme/app_colors.dart';
import 'package:mental_health_app/core/theme/typography_theme.dart';

final ThemeData mentalHealthThemeDark = BuildDarkTheme();

ThemeData BuildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  return base.copyWith(
    scaffoldBackgroundColor: AppColors.mentalDarkThemeColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.mentalDarkThemeColor,
      selectedItemColor: AppColors.mentalBrandColor,
      unselectedItemColor: AppColors.mentalOnboardTextColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.mentalDarkThemeColor,
      iconTheme: IconThemeData(
        color: AppColors.mentalDarkThemeColor,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarBrightness: Brightness.light,
        systemNavigationBarIconBrightness: Brightness.dark,
        statusBarColor: AppColors.mentalBrandLightColor,
        statusBarIconBrightness: Brightness.light,
      ),
    ),
    iconTheme: IconThemeData(
      color: AppColors.mentalBrandLightColor,
    ),
    cardColor: AppColors.mentalDarkThemeColor,
    canvasColor: AppColors.mentalDarkThemeColor,
    brightness: Brightness.light,
    primaryColor: AppColors.mentalBrandColor,
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.mentalBrandColor,
      disabledColor: AppColors.mentalOnboardTextColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mentalBrandColor,
      ),
    ),
    dialogBackgroundColor: AppColors.mentalDarkThemeColor,
    textTheme: mentalHealthTextThemeDark(base.textTheme),
    primaryTextTheme: Typography().white,
    colorScheme: ColorScheme.dark(
      primary: AppColors.mentalBrandColor,
      surface: AppColors.mentalDarkThemeColor,
      background: AppColors.mentalDarkThemeColor,
      brightness: Brightness.dark,
    ),
  );
}

final ThemeData mentalHealthThemeLight = buildLightTheme();

ThemeData buildLightTheme() {
  TextStyle _buildTextStyle(Color color, {double size = 16.0}) {
    return TextStyle(color: color, fontSize: size);
  }

  UnderlineInputBorder _buildBorder(Color color) {
    return UnderlineInputBorder(
      borderSide: BorderSide(color: color),
      borderRadius: BorderRadius.circular(8.0),
    );
  }

  final ThemeData base = ThemeData.light();
  return base.copyWith(
    inputDecorationTheme: InputDecorationTheme(
      contentPadding: EdgeInsets.all(8),
      floatingLabelBehavior: FloatingLabelBehavior.auto,
      enabledBorder: _buildBorder(AppColors.mentalOnboardTextColor),
      errorBorder: _buildBorder(Colors.red),
      focusedBorder: _buildBorder(AppColors.mentalBrandColor),
      disabledBorder: _buildBorder(AppColors.mentalOnboardTextColor),
      errorStyle: _buildTextStyle(Colors.red),
      labelStyle: _buildTextStyle(AppColors.mentalOnboardTextColor),
      helperStyle: _buildTextStyle(AppColors.mentalOnboardTextColor),
      hintStyle: _buildTextStyle(AppColors.mentalOnboardTextColor),
      prefixStyle: _buildTextStyle(AppColors.mentalOnboardTextColor),
    ),
    scaffoldBackgroundColor: AppColors.mentalBrandLightColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColors.mentalBrandLightColor,
      selectedItemColor: AppColors.mentalBrandColor,
      unselectedItemColor: AppColors.mentalOnboardTextColor,
    ),
    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.mentalBrandLightColor,
      iconTheme: IconThemeData(
        color: AppColors.mentalDarkColor,
      ),
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: AppColors.mentalBrandLightColor,
        statusBarIconBrightness: Brightness.dark,
      ),
    ),
    iconTheme: IconThemeData(
      color: AppColors.mentalBrandLightColor,
    ),
    cardColor: AppColors.mentalBrandLightColor,
    canvasColor: AppColors.mentalBrandLightColor,
    brightness: Brightness.light,
    primaryColor: AppColors.mentalBrandColor,
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.mentalBrandColor,
      disabledColor: AppColors.mentalOnboardTextColor,
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.mentalBrandColor,
      ),
    ),
    dialogBackgroundColor: AppColors.mentalBrandLightColor,
    textTheme: mentalHealthTextThemeDark(base.textTheme),
    primaryTextTheme: Typography().white,
    colorScheme: ColorScheme.dark(
      primary: AppColors.mentalBrandColor,
      surface: AppColors.mentalBrandLightColor,
      background: AppColors.mentalBrandLightColor,
      brightness: Brightness.dark,
    ),
  );
}
