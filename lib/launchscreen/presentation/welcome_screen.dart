import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme/app_colors.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mentalDarkColor,
      body: Center(
        child: Text("Welcome to Flutter"),
      ),
    );
  }
}
