
import 'package:ecommerceapp/utils/constant/sizes.dart';
import 'package:ecommerceapp/utils/constant/text_string.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MyLoginForm extends StatelessWidget {
  const MyLoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(
            vertical: MySizes.spaceBtwSections),
        child: Column(
          children: [
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.direct_right),
                labelText: MyTexts.email,
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwInputField),
            TextFormField(
              decoration: InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MyTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwInputField / 2),
            Row(
              children: [
                Checkbox(value: true, onChanged: (value) {}),
                const Text(MyTexts.rememberMe),
              ],
            ),
            const SizedBox(height: MySizes.spaceBtwSections),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(MyTexts.signIn),
              ),
            ),
            const SizedBox(height: MySizes.spaceBtwItems),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: Text(MyTexts.createAccount),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
