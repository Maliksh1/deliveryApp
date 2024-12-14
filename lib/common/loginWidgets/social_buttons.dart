
import 'package:ecommerceapp/utils/constant/colors.dart';
import 'package:ecommerceapp/utils/constant/image_strings.dart';
import 'package:ecommerceapp/utils/constant/sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MySocialButtons extends StatelessWidget {
  const MySocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: MySizes.iconMd,
              width: MySizes.iconMd,
              image: AssetImage(MyImages.googleImage),
            ),
          ),
        ),
        const SizedBox(width: MySizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.grey),
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              height: MySizes.iconLg,
              width: MySizes.iconLg,
              image: AssetImage(MyImages.facebookImage),
            ),
          ),
        ),
      ],
    );
  }
}
