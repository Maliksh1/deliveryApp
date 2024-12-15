import 'package:ecommerceapp/common/loginWidgets/login_divider.dart';
import 'package:ecommerceapp/common/loginWidgets/social_buttons.dart';
import 'package:ecommerceapp/common/styles/spacing_styles.dart';
import 'package:ecommerceapp/features/auth/screens/login/widgets/login_form.dart';
import 'package:ecommerceapp/features/auth/screens/login/widgets/login_header.dart';
import 'package:ecommerceapp/utils/constant/sizes.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              MyLoginHeader(),
              MyLoginForm(),
              MyLoginDivider(),
              const SizedBox(height: MySizes.spaceBtwSections),
              MySocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
