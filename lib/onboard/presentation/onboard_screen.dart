import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mental_health_app/core/theme/app_colors.dart';
import 'package:mental_health_app/core/theme/brand_images.dart';
import 'package:mental_health_app/core/theme/custom_texts.dart';
import 'package:mental_health_app/onboard/application/onboard_controller.dart';
import 'package:mental_health_app/onboard/widgets/onboard_template.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  OnboardingController _controller = Get.put(OnboardingController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.mentalBrandLightColor,
      body: SafeArea(
          child: PageView(
            controller: _controller.pageController,
        children: [
          OnboardTemplate(pageController: _controller.pageController,),
          OnboardTemplate(pageController: _controller.pageController,),
          OnboardTemplate(pageController: _controller.pageController,),
          // OnboardTemplate(pageController: _controller.pageController,),
        ],
      )),
    );
  }
}
