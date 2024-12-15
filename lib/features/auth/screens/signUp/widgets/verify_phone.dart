import 'package:ecommerceapp/common/signUp/success_screen.dart';
import 'package:ecommerceapp/common/signUp/verification_code.dart';
import 'package:ecommerceapp/features/auth/screens/login/login.dart';
import 'package:ecommerceapp/utils/constant/image_strings.dart';
import 'package:ecommerceapp/utils/constant/sizes.dart';
import 'package:ecommerceapp/utils/constant/text_string.dart';
import 'package:ecommerceapp/utils/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyPhoneScreen extends StatelessWidget {
  const VerifyPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              Center(
                child: Image(
                  height: 275,
                  width: MyHelperFunctions.screenWidth(),
                  image: AssetImage(MyImages.verifyPhone),
                ),
              ),
              SizedBox(height: MySizes.spaceBtwSections),
              Text(
                MyTexts.confirmPhone,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              Text(
                MyTexts.confirmPhoneSubtitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  VerificationCode(),
                  VerificationCode(),
                  VerificationCode(),
                  VerificationCode(),
                ],
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => SuccessScreen()),
                  child: Text(MyTexts.continueString),
                ),
              ),
              SizedBox(height: MySizes.spaceBtwItems),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                  onPressed: () {},
                  child: Text(MyTexts.resendPhoneNo),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
