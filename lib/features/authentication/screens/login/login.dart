import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warren/common/styles/spacing_styles.dart';

import 'package:warren/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:warren/features/authentication/screens/signup/widgets/signup.dart';
import 'package:warren/utils/constants/image_strings.dart';
import 'package:warren/utils/constants/sizes.dart';
import 'package:warren/utils/constants/text_strings.dart';
import 'package:warren/utils/helpers/helper_functions.dart';
// Assurez-vous d'importer Iconsax si vous l'utilisez dans votre projet
import 'package:iconsax/iconsax.dart';

import '../../../../utils/constants/colors.dart';
import '../home_page/Achat_vente/navigation_menu.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
             mainAxisAlignment: MainAxisAlignment.start, // Alignement de tout le contenu vers le haut
             crossAxisAlignment: CrossAxisAlignment.start, // Aligner les éléments à gauche
            children: [
              // Logo, Title & Sub_Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Affichage du logo en fonction du mode (clair ou sombre)
                  Image(
                    height: 140,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  // Titre de la page
                  Text(TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  // Sous-titre de la page
                  Text(TTexts.loginSubTitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),
              const SizedBox(height: TSizes.sm),

              // Formulaire de connexion
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      // Champ Email
                      TextFormField(
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Iconsax.direct_right),
                          labelText: TTexts.email,
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),
                  
                      // Champ Mot de passe
                      TextFormField(
                        obscureText: true, // Masquer le mot de passe par défaut
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields / 2),
                  
                      // Rappelle moi et mot de pass oublié
                  
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // me rappeler
                          Row(
                            children: [
                              Checkbox(value: true, onChanged: (Value) {}),
                              const Text(TTexts.rememberMe),
                            ],
                          ),
                          // Mot de passe oublié
                          TextButton(
                              onPressed: () => Get.to(() => const ForgetPassword()),
                              child: const Text(TTexts.forgetPassword)),
                        ],
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),
                  
                      // Bouton de connexion
                      SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                              onPressed: ()  => Get.offAll(() => const NavigationMenu()), // TEMPORAIRE TEMPORAIRE  TEMPORAIRE TEMPORAIRE TEMPORAIRE // Get.to(() => const NavigationMenu());
                              child: const Text(TTexts.signIn))),
                              const SizedBox(height: TSizes.spaceBtwSections),
                  
                      // Bouton pour creer un compte
                      SizedBox(
                          width: double.infinity,
                          child: OutlinedButton(
                              onPressed: () => Get.to(() => const SignupScreen()),
                              child: const Text(TTexts.creatAccount))),
                              const SizedBox(height: TSizes.spaceBtwSections),
                    ],
                  ),
                ),
              ),
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
            ],
          ),
        ),
      ),
    );
  }
}
