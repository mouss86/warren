import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warren/utils/constants/text_strings.dart';
import '../../../../utils/constants/sizes.dart';
import 'reset_password.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(TTexts.forgetPasswordTitle),
      ),
      body: Padding(
        padding: EdgeInsets.all(TSizes.defaultSpace),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Heading
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

            // Subtitle
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(height: TSizes.spaceBtwSections * 2),

            // Email Text Field
            TextField(
              decoration: InputDecoration(
                labelText: TTexts.email,  // Clé de texte pour l'email
                hintText: 'example@mail.com',  // Suggestion pour l'email
                prefixIcon: const Icon(Icons.email),  // Icône d'email par défaut
                border: const OutlineInputBorder(),  // Bordure de champ de texte
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwItems),

             // Submit Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.off(() =>  ResetPassword()),
                child: const Text(TTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


