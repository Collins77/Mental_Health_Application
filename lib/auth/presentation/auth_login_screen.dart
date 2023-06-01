import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mental_health_app/core/theme/app_colors.dart';
import 'package:mental_health_app/core/theme/brand_images.dart';
import 'package:mental_health_app/core/theme/custom_texts.dart';
import 'package:mental_health_app/uis/custom_buttons.dart';
import 'package:mental_health_app/uis/custom_input_fields.dart';
import 'package:mental_health_app/uis/custom_text.dart';
import 'package:mental_health_app/uis/spacing.dart';
import 'package:mental_health_app/utils/focus_helper.dart';

class AuthLoginScreen extends StatefulWidget {
  const AuthLoginScreen({Key? key}) : super(key: key);

  @override
  State<AuthLoginScreen> createState() => _AuthLoginScreenState();
}

class _AuthLoginScreenState extends State<AuthLoginScreen> {
  late TextEditingController emailController;
  late TextEditingController passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        hideKeyboard(context: context);
      },
      child: Scaffold(
        backgroundColor: AppColors.mentalBrandLightColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.symmetric(
                  horizontal: CustomSpacing.kHorizontalPad),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  customSizedBox(context: context, size: 0.15),
                  mainHeading(
                    text: CustomText.mentalSignInText,
                    context: context,
                  ),
                  customSizedBox(context: context, size: 0.04),
                  Form(
                    child: Column(
                      children: [
                        CustomInputTextField(
                          controller: emailController,
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return CustomErrorText.invalidEmail;
                            }
                            return null;
                          },
                        ),
                        CustomInputPassword(
                          controller: passwordController,
                          keyboardType: TextInputType.text,
                          obscuringCharacter: "*",
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return CustomErrorText.invalidPassword;
                            }
                            return null;
                          },
                        ),
                        customSizedBox(context: context, size: 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () => Get.toNamed('/forgot-password'),
                              child: Text(
                                CustomText.mentalForgotPassword,
                                textAlign: TextAlign.right,
                                style: TextStyle(
                                  fontSize: 13.0,
                                  height: 1.2,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w200,
                                  color: AppColors.mentalDarkColor,
                                ),
                              ),
                            )
                          ],
                        ),
                        customSizedBox(context: context, size: 0.1),
                        CustomBtn(
                          onPressed: () => {},
                          buttonText: CustomText.mentalSignInText,
                        ),
                        customSizedBox(context: context, size: 0.13),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              CustomText.mentalSocialSignUpText,
                              style: TextStyle(
                                fontSize: 15.0,
                                height: 1.2,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w300,
                                color: AppColors.mentalDarkColor,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomCirclerBtn(
                                  imgName: BrandImages.kGoogleIconName,
                                  onPressed: () => {},
                                  redus: 20.0,
                                  bagroundRadius: 21.0,
                                ),
                                CustomCirclerBtn(
                                  imgName: BrandImages.kFacebookIconName,
                                  onPressed: () => {},
                                  redus: 20.0,
                                  bagroundRadius: 21.0,
                                ),
                                CustomCirclerBtn(
                                  imgName: BrandImages.kAppleIconName,
                                  onPressed: () => {},
                                  redus: 20.0,
                                  bagroundRadius: 21.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                        customSizedBox(context: context, size: 0.1),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              CustomText.mentalSignInNoAcctText,
                              style: TextStyle(
                                fontSize: 13.0,
                                height: 1.2,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w200,
                                color: AppColors.mentalDarkColor,
                              ),
                            ),
                            GestureDetector(
                              onTap: () => Get.toNamed('/signup'),
                              child: Text(
                                CustomText.mentalSignUpText,
                                style: TextStyle(
                                  fontSize: 13.0,
                                  height: 1.2,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w600,
                                  color: AppColors.mentalBrandColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
