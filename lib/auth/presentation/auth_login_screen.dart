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
                        customSizedBox(context: context, size: 0.1),
                        CustomBtn(
                          onPressed: () => {}, 
                          buttonText: 'Sign In',
                          )
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
