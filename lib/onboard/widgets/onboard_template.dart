import 'package:flutter/material.dart';
import 'package:mental_health_app/core/theme/app_colors.dart';
import 'package:mental_health_app/core/theme/brand_images.dart';
import 'package:mental_health_app/core/theme/custom_texts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardTemplate extends StatelessWidget {
  final PageController pageController;
  const OnboardTemplate({Key? key, required this.pageController})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(
                CustomText.skipText,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                  color: AppColors.mentalDarkColor,
                ),
              )
            ],
          ),
          SizedBox(
            height: 26.0,
          ),
          Container(
            height: 350.0,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(BrandImages.kOnboardScreen1Img),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
          SizedBox(
            height: 18.0,
          ),
          SmoothPageIndicator(
            controller: pageController,
            count: 3,
            effect: WormEffect(
                dotWidth: 10.0,
                dotHeight: 10.0,
                activeDotColor: AppColors.mentalBrandColor),
            onDotClicked: (index) {},
          ),
          Padding(
              padding: const EdgeInsets.only(right: 128.0, top: 34.0),
              child: RichText(
                text: TextSpan(
                  text: CustomText.onboardScreenText1,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 22.0,
                    color: AppColors.mentalOnboardTextColor,
                  ),
                  children: [
                    TextSpan(
                      text: CustomText.onboardScreenText2,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                        color: AppColors.mentalDarkColor,
                      ),
                    ),
                  ],
                ),
              )),
          SizedBox(
            height: 60.0,
          ),
          Container(
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
                CustomText.onboardScreenBtn1,
                textAlign: TextAlign.right,
                style: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 20.0,
                  color: AppColors.mentalBrandLightColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
