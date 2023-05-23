import 'package:animate_icons/animate_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mental_health_app/core/theme/app_colors.dart';
import 'package:mental_health_app/uis/spacing.dart';

class CustomInputTextField extends StatelessWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final bool obscureText;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputformatters;
  const CustomInputTextField(
      {Key? key,
      this.controller,
      this.keyboardType,
      required this.obscureText,
      this.validator,
      this.inputformatters})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: CustomSpacing.kBottomSmall),
      child: TextFormField(
        style: TextStyle(
          color: AppColors.mentalDarkColor,
        ),
        controller: controller,
        keyboardType: keyboardType,
        obscureText: obscureText,
        validator: validator,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        inputFormatters: inputformatters,
      ),
    );
  }
}

class CustomInputPassword extends StatelessWidget {
  const CustomInputPassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    
}

Stateful