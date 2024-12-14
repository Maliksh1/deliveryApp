import 'package:ecommerceapp/features/auth/controllers%20onboarding/onboarding_conttoller.dart';
import 'package:ecommerceapp/features/auth/screens/OnBoarding/widgets/onboarding_button.dart';
import 'package:ecommerceapp/features/auth/screens/OnBoarding/widgets/onboarding_dot_navigation.dart';
import 'package:ecommerceapp/features/auth/screens/OnBoarding/widgets/onboarding_page.dart';
import 'package:ecommerceapp/features/auth/screens/OnBoarding/widgets/onboarding_skip.dart';
import 'package:ecommerceapp/utils/constant/image_strings.dart';
import 'package:ecommerceapp/utils/constant/text_string.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnboardingConttoller());

    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: MyImages.onboardingImage1,
                title: MyTexts.onBoardingTitle3,
                subTitle: MyTexts.onBoardingSubtitle3,
              ),
              OnBoardingPage(
                image: MyImages.onboardingImage2,
                title: MyTexts.onBoardingTitle2,
                subTitle: MyTexts.onBoardingSubtitle2,
              ),
              OnBoardingPage(
                image: MyImages.onboardingImage3,
                title: MyTexts.onBoardingTitle1,
                subTitle: MyTexts.onBoardingSubtitle1,
              ),
            ],
          ),
          const OnBoardingSkip(),
          const OnBoardingDotNavigation(),
          const OnBoardingButton()
        ],
      ),
    );
  }
}
