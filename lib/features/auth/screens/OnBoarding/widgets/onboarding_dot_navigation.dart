import 'package:ecommerceapp/features/auth/controllers%20onboarding/onboarding_conttoller.dart';
import 'package:ecommerceapp/utils/constant/colors.dart';
import 'package:ecommerceapp/utils/constant/sizes.dart';
import 'package:ecommerceapp/utils/dev/device_utility.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingDotNavigation extends StatelessWidget {
  const OnBoardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnboardingConttoller.instance;
    final dark = MyHelperFunctions.isDarkMode(context);

    return Positioned(
      bottom: MyDeviceUtils.getBottomNavigationBarHeight() + 25,
      left: MySizes.defaultSpace,
      child: SmoothPageIndicator(
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        count: 3,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? MyColors.light : MyColors.dark,
          dotHeight: 6,
        ),
      ),
    );
  }
}
