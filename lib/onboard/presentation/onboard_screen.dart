import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mental_health_app/core/theme/app_colors.dart';
import 'package:mental_health_app/core/theme/custom_texts.dart';

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
      body: SafeArea(
        child: PageView(
        children: [
          Container(
            padding: EdgeInsets.all(18.0),
          child: 
          Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(CustomText.skipText,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20.0,
                    color: AppColors.mentalDarkColor,
                  ),)
                ],
              ),
            ],
          ),),
          Container(color: Colors.red,),
          Container(color: Colors.blue,),
          Container(color: Colors.green,),
        ],
      )
      ),
    );
  }


}