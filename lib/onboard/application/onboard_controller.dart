import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  late PageController pageController;

  @override
  void onReady() {
    pageController = PageController(initialPage: 0);
    super.onReady();
  }

  @override
  void onClose() {
    pageController.dispose();
    super.onClose();
  }
}
