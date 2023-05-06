import 'package:get/get.dart';
import 'package:mental_health_app/auth/presentation/auth_login_screen.dart';
import 'package:mental_health_app/launchscreen/presentation/welcome_screen.dart';
import 'package:mental_health_app/onboard/presentation/onboard_screen.dart';
import 'package:mental_health_app/routes/app_routes.dart';

class AppPages {
  static const INITIAL = Routes.SPLASH;

  static final routes = [
    GetPage(
      name: INITIAL,
      page: () => WelcomeScreen(),
    ),
    GetPage(
      name: Routes.ONBOARD,
      page:() => OnboardingScreen(),
    ),
    GetPage(
      name: Routes.LOGIN, 
      page: () => AuthLoginScreen()
    ),
  ];
}
