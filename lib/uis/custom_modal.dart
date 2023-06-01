import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme/custom_texts.dart';
import 'package:mental_health_app/uis/custom_text.dart';

void customBottomSheet(
    {
      required BuildContext context,
    required String title,
    required Widget content,
    required VoidCallback onPressed}) {
  showModalBottomSheet(
      context: context,
      constraints: BoxConstraints(
        maxHeight: MediaQuery.of(context).size.height * 0.35,
        minWidth: MediaQuery.of(context).size.width,
      ),
      builder: (BuildContext context) {
        return Container(
          child: Column(
            children: [
              mainHeading(
                text: CustomText.mentalPasswordResetText, 
                context: context,
                )
            ],
          ),
        );
      });
}
