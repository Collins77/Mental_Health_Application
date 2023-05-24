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

class CustomInputPassword extends StatefulWidget {
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String obscuringCharacter;
  final String? Function(String?)? validator;
  final List<TextInputFormatter>? inputformatters;
  const CustomInputPassword(
      {super.key,
      this.controller,
      required this.keyboardType,
      required this.obscuringCharacter,
      this.validator,
      this.inputformatters});

  @override
  State<CustomInputPassword> createState() => _CustomInputPasswordState();
}

class _CustomInputPasswordState extends State<CustomInputPassword> {
  late AnimateIconController animateCon;

  bool obscureText = true;

  @override
  void initState() {
    super.initState();
    animateCon = AnimateIconController();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          child: TextFormField(
            style: TextStyle(
              color: AppColors.mentalDarkColor,
            ),
            controller: widget.controller,
            keyboardType: widget.keyboardType,
            obscureText: true,
            validator: widget.validator,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            obscuringCharacter: widget.obscuringCharacter,
          ),
        ),
        Positioned(
          top: 3.0,
          left: 300.0,
          child: SizedBox(
            child: AnimateIcons(
              startIcon: Icons.visibility_off,
              endIcon: Icons.visibility,
              size: 28.0,
              controller: animateCon,
              onStartIconPress: () {
                setState(() {
                  obscureText = false;
                });
                return true;
              },
              onEndIconPress: () {
                setState(() {
                  obscureText = true;
                });
                return true;
              },
              duration: const Duration(milliseconds: 500),
              startIconColor: AppColors.mentalOnboardTextColor,
              endIconColor: AppColors.mentalBrandColor,
              clockwise: false,
            ),
          ),
        )
      ],
    );
  }
}
