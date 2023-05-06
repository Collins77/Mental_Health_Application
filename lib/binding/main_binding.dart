import 'package:get/get.dart';
import 'package:mental_health_app/launchscreen/application/welcome_controller.dart';
import 'package:mental_health_app/onboard/application/onboard_controller.dart';

class MainBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<WelcomeController>(WelcomeController());
    Get.put<OnboardingController>(OnboardingController());
  }
  
}