import 'package:flutter/material.dart';

import '../core/theme/app_colors.dart';

class CustomBtn extends StatelessWidget {
  final VoidCallback onPressed;
  final String buttonText;
  const CustomBtn({super.key, required this.onPressed, required this.buttonText});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
            onTap: onPressed,
            child: Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.only(
                top: 18.0,
                left: 18.0,
                right: 18.0,
                bottom: 18.0,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30.0),
                color: AppColors.mentalBrandColor,
              ),
              child: Center(
                child: Text(
                  buttonText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20.0,
                    color: AppColors.mentalBrandLightColor,
                  ),
                ),
              ),
            ),
          );
  }
}