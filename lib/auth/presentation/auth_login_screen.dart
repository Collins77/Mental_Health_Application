import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme/app_colors.dart';
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
                    text: 'Sign In',
                    context: context,
                  ),
                  customSizedBox(context: context, size: 0.04),
                  Form(
                    child: Column(
                      children: [
                        CustomInputTextField(
                          keyboardType: TextInputType.emailAddress,
                          obscureText: false,
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return 'Please enter email';
                            }
                            return null;
                          },
                        ),
                        CustomInputPassword(
                          // controller: _passwordController,
                          keyboardType: TextInputType.text,
                          obscuringCharacter: "*",
                          validator: (String? value) {
                            if (value!.isEmpty) {
                              return "Please enter password";
                            }
                            return null;
                          },
                        ),
                        customSizedBox(context: context, size: 0.02),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Forgot password?',
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
                          buttonText: 'Sign In',
                        ),
                         customSizedBox(context: context, size: 0.13),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'or sign in with',
                              style: TextStyle(
                                color: AppColors.mentalDarkColor,
                              ),
                              ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomCirclerBtn(
                                  imgName: 'icongoogle', 
                                  onPressed: () => {}, 
                                  redus: 20.0,
                                  bagroundRadius: 22.0,
                                ),
                                CustomCirclerBtn(
                                  imgName: 'iconfacebook', 
                                  onPressed: () => {},
                                  redus: 20.0,
                                  bagroundRadius: 22.0,
                                ),
                                CustomCirclerBtn(
                                  imgName: 'iconapple', 
                                  onPressed: () => {},
                                  redus: 20.0,
                                  bagroundRadius: 22.0,
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
                              'Don\'t have an account?',
                              style: TextStyle(
                                fontSize: 13.0,
                                height: 1.2,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w200,
                                color: AppColors.mentalDarkColor,
                              ),
                            ),
                            GestureDetector(
                              onTap: () {},
                              child: Text(
                                'Sign up',
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


