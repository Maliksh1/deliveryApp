import 'package:ecommerceapp/features/auth/controllers%20onboarding/onboarding_conttoller.dart';
import 'package:ecommerceapp/utils/constant/sizes.dart';
import 'package:ecommerceapp/utils/dev/device_utility.dart';
import 'package:flutter/material.dart';

class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MyDeviceUtils.getAppBarHeight(),
        right: MySizes.defaultSpace,
        child: TextButton(
            onPressed: () => OnboardingConttoller.instance.skipPage(),
            child: const Text('Skip')));
  }
}
