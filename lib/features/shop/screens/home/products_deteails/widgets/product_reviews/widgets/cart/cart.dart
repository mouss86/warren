
import 'package:flutter/material.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/Images_body/Rounded_image1.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/appbar/appbar.dart';
import 'package:warren/utils/constants/colors.dart';
import 'package:warren/utils/constants/sizes.dart';
import 'package:warren/utils/helpers/helper_functions.dart';

import '../../../../../../../../../utils/constants/image_strings.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(title: Text('Panier', style: Theme.of(context).textTheme.headlineSmall)),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child:  ListView.separated(
            shrinkWrap: true,
          separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections) , 
          itemCount: 4,
          itemBuilder: (_, index) => Column(
            children: [
              Row(
                children: [
                  // Image
                  RoundedImage(
                    imageUrl: TImages.adidasbleublanc, 
                    width: 60 , 
                    height: 60,
                    border: Border.all(color: Colors.green,
                    width: 2,
                    ),
                    padding: EdgeInsets.all(TSizes.sm),
                    backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkerGrey : TColors.light,
                    ),
                ],
              ),
            ],
          ), 
          ),
          ),
      ),
    );
  }
}