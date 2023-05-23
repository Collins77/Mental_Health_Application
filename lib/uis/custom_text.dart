import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme/app_colors.dart';

Text mainHeading({required String text, required BuildContext context}) {
  return Text(
    text,
    style: Theme.of(context).textTheme.headline2!.copyWith(
      fontWeight: FontWeight.w600,
      color: AppColors.mentalDarkColor
    ),
  );
}
