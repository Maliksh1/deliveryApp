import 'package:ecommerceapp/features/auth/screens/OnBoarding/onboarding.dart';
import 'package:ecommerceapp/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: EcommerceTheme.lightTheme,
      darkTheme: EcommerceTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      home: const OnBoardingScreen(),
    );
  }
}
