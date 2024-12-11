import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/features/authentication/screens/signup/widgets/verify_email.dart';
import 'package:warren/utils/constants/colors.dart';
import 'package:warren/utils/constants/sizes.dart';
import 'package:warren/utils/helpers/helper_functions.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Titre
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Formulaire
              Form(
                child: Column(
                  children: [
                    // Prénom et Nom dans une Row avec un espacement entre les champs
                    Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: TTexts.firstName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                        const SizedBox(width: TSizes.spaceBtwInputFields),
                        Expanded(
                          child: TextFormField(
                            decoration: const InputDecoration(
                              labelText: TTexts.lastName,
                              prefixIcon: Icon(Iconsax.user),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    // Username
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.username,
                        prefixIcon: Icon(Iconsax.user_edit),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    // Email
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.email,
                        prefixIcon: Icon(Iconsax.direct),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    // Numéro de téléphone
                    TextFormField(
                      decoration: const InputDecoration(
                        labelText: TTexts.phoneNo,
                        prefixIcon: Icon(Iconsax.call),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwInputFields),

                    // Mot de passe
                    TextFormField(
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: TTexts.password,
                        prefixIcon: Icon(Iconsax.password_check),
                        suffixIcon: Icon(Iconsax.eye_slash),
                      ),
                    ),
                    const SizedBox(height: TSizes.spaceBtwSections),

                    // Termes et conditions
                    Row(
                      children: [
                        SizedBox(
                          width: 24,
                          height: 24,
                          child: Checkbox(
                            value: true,
                            onChanged: (value) {
                              // Traitez ici la logique pour la case à cocher si nécessaire
                            },
                          ),
                        ),
                        const SizedBox(width: TSizes.spaceBtwItems),
                        Expanded(
                          child: Text.rich(
                            TextSpan(
                              children: [
                                TextSpan(
                                  text: ' ${TTexts.iAgreeTo} ',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                TextSpan(
                                  text: TTexts.privacyPolicy,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.apply(
                                        color: dark
                                            ? TColors.white
                                            : TColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark
                                            ? TColors.white
                                            : TColors.primary,
                                      ),
                                ),
                                TextSpan(
                                  text: ' ${TTexts.and} ',
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                TextSpan(
                                  text: TTexts.termsOfUse,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium
                                      ?.apply(
                                        color: dark
                                            ? TColors.white
                                            : TColors.primary,
                                        decoration: TextDecoration.underline,
                                        decorationColor: dark
                                            ? TColors.white
                                            : TColors.primary,
                                      ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),

                    // Bouton Sign Up
                    SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () => Get.to(() => const VerificationEmailScreen()), child: const Text(TTexts.creatAccount)),)
                  ],
                ),
              ),
              const SizedBox(height: TSizes.spaceBtwSections),

              // Divider
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                 Flexible(child:Divider(color: dark ? TColors.primary:TColors.primary, thickness: 0.5, indent: 60, endIndent: 5,)),
                 Text(TTexts.orSignInWith.capitalize!, style: Theme.of(context).textTheme.labelMedium),
                 Flexible(child:Divider(color: dark ? TColors.primary:TColors.primary, thickness: 0.5, indent:5, endIndent: 60,)),
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwSections),
              // Footer
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: TColors.primary
                      ), borderRadius: BorderRadius.circular(100)
                    ),
                    child: IconButton(
                      onPressed: () {}, 
                      icon: const Image(
                        width: TSizes.iconMd,
                        height: TSizes.iconMd,
                        image: AssetImage(TImages.google),
                        ),
                      ),
                  ),
                  const SizedBox(width: TSizes.spaceBtwItems),
                   Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: TColors.primary
                      ), borderRadius: BorderRadius.circular(100)
                    ),
                    child: IconButton(
                      onPressed: () {}, 
                      icon: const Image(
                        width: TSizes.iconMd,
                        height: TSizes.iconMd,
                        image: AssetImage(TImages.facebook),
                        ),
                      ),
                  ),
                   const SizedBox(width: TSizes.spaceBtwItems),
                    Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: TColors.primary
                      ), borderRadius: BorderRadius.circular(100)
                    ),
                    child: IconButton(
                      onPressed: () {}, 
                      icon: const Image(
                        width: TSizes.iconMd,
                        height: TSizes.iconMd,
                        image: AssetImage(TImages.instagram),
                        ),
                      ),
                  ),
                ],
                )


             // Social buttons
            ],
          ),
        ),
      ),
    );
  }
}
