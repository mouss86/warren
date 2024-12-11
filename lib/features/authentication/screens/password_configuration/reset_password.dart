


import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warren/utils/constants/image_strings.dart';
import 'package:warren/utils/constants/text_strings.dart';
import 'package:warren/utils/helpers/helper_functions.dart';

import '../../../../utils/constants/sizes.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(onPressed: () => Get.back(), icon: Icon(CupertinoIcons.clear))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Image
              Image(image: AssetImage(TImages.confirmation), width: THelperFunctions.screenWidth() *0.6,),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Titre & Sous-titre
              Text(TTexts.changeYourPasswordTitle, style: Theme.of(context).textTheme.headlineMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),
              Text(TTexts.changeYourPasswordSubTitle, style: Theme.of(context).textTheme.labelMedium, textAlign: TextAlign.center),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Boutons
               SizedBox(width: double.infinity, child: ElevatedButton(onPressed:() {}, child:  Text(TTexts.done)),),

               const SizedBox(height: TSizes.spaceBtwItems),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed:() {}, child:  Text(TTexts.resendEmail)),),

                // on pourrait changer le "ElevatedButton" a "TextButton" si on veut
            ],
          ),
          ),
      ),
    );
  }
}