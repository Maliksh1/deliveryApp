import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:ecommerceapp/features/auth/screens/login/login.dart';
import 'package:ecommerceapp/utils/constant/image_strings.dart';
import 'package:ecommerceapp/utils/constant/sizes.dart';
import 'package:ecommerceapp/utils/constant/text_string.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              Center(
                child: Image(
                  width: MyHelperFunctions.screenWidth(),
                  image: AssetImage(MyImages.successVerification),
                ),
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              Text(
                MyTexts.createdSuccessfully,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              Text(
                MyTexts.createdSuccessfullySubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => LoginScreen()),
                  child: Text(MyTexts.continueString),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
