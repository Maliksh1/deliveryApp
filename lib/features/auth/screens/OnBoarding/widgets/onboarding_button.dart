import 'package:ecommerceapp/features/auth/controllers%20onboarding/onboarding_conttoller.dart';
import 'package:ecommerceapp/utils/constant/colors.dart';
import 'package:ecommerceapp/utils/constant/sizes.dart';
import 'package:ecommerceapp/utils/dev/device_utility.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {    
    final dark = MyHelperFunctions.isDarkMode(context);
    return Positioned(
      right: MySizes.defaultSpace,
      bottom: MyDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnboardingConttoller.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? MyColors.primary : Colors.black,
        ),
        child: const Icon(
          Iconsax.arrow_right_3,
        ),
      ),
    );
  }
}
