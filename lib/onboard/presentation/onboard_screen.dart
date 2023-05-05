import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mental_health_app/core/theme/app_colors.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key:key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState(); 
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: AppColors.mentalBrandLightColor,
      body: SafeArea(child: Text("Welcome to the onboarding screen")),
    );
  }


}