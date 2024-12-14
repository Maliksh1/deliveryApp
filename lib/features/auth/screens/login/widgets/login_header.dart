
import 'package:ecommerceapp/utils/constant/image_strings.dart';
import 'package:ecommerceapp/utils/constant/sizes.dart';
import 'package:ecommerceapp/utils/constant/text_string.dart';
import 'package:flutter/material.dart';

class MyLoginHeader extends StatelessWidget {
  const MyLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(MyImages.loginImage),
        ),
        Text(MyTexts.loginTitle,
            style: Theme.of(context).textTheme.headlineMedium),
        const SizedBox(height: MySizes.sm),
        Text(MyTexts.loginSubtitle,
            style: Theme.of(context).textTheme.bodyMedium),
      ],
    );
  }
}
