import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warren/common/widgets/success_screen/success_screen.dart';
import 'package:warren/features/authentication/screens/login/login.dart';
import 'package:warren/utils/constants/sizes.dart';
import 'package:warren/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/text_strings.dart';


class VerificationEmailScreen extends StatelessWidget {
  const VerificationEmailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: ()  => Get.offAll(() => const LoginScreen()),
            icon: const Icon(CupertinoIcons.clear))
        ],
      ),
      body:  SingleChildScrollView(
        // padding pour donner Default Equal Space on all sides in all Screens.

        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(image: AssetImage(TImages.verification), width: THelperFunctions.screenWidth() *0.6,),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Titre & Sous-titre
              Text(TTexts.verifyEmail, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text('cherifmoussa@yahoo.fr', style: Theme.of(context).textTheme.labelLarge, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.confirmEmailSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),

               // Boutons
               SizedBox(width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.to(() => SuccessScreen(image: TImages.confirmation,
                   title: TTexts.yourAccountCreatedSubTitle,
                    subTitle: TTexts.yourAccountCreatedSubTitle, 
                    onPressed: () => Get.to(() => LoginScreen()),
                    
                  )), child: const Text(TTexts.tcontinue))),

               const SizedBox(height: TSizes.spaceBtwItems),
               SizedBox(width: double.infinity, child: TextButton(onPressed: () {}, child: const Text(TTexts.resendEmail))),


              



             

            ],
          ),),
          
      ),
    );
  }
}