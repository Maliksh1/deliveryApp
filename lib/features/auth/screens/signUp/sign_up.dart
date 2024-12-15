import 'package:ecommerceapp/common/loginWidgets/login_divider.dart';
import 'package:ecommerceapp/common/loginWidgets/social_buttons.dart';
import 'package:ecommerceapp/features/auth/screens/signUp/widgets/sign_up_form.dart';
import 'package:ecommerceapp/utils/constant/sizes.dart';
import 'package:ecommerceapp/utils/constant/text_string.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(MySizes.defaultSpace),
          child: Column(
            children: [
              Text(
                MyTexts.signUpTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: MySizes.spaceBtwSections),
              SignUpForm(),
              const SizedBox(height: MySizes.spaceBtwSections),
              MyLoginDivider(),
              const SizedBox(height: MySizes.spaceBtwInputField),
              MySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
