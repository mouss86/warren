import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/Images_body/circular_icon.dart';
import 'package:warren/utils/helpers/helper_functions.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';

class BottomAddToCart extends StatelessWidget {
  const BottomAddToCart({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace, vertical: TSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? TColors.darkerGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(TSizes.cardRadiusLg),
          topRight: Radius.circular(TSizes.cardRadiusLg),
        )
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CircularIcon(
                icon: Iconsax.minus, 
                backgroundColor: TColors.darkGrey,
                width: 40,
                height: 40,
                color: TColors.white,
                
                ),
                const SizedBox(width: TSizes.spaceBtwItems),
                Text('2', style: Theme.of(context).textTheme.titleSmall),
                const SizedBox(width: TSizes.spaceBtwItems),
                 CircularIcon(
                icon: Iconsax.add, 
                backgroundColor: TColors.grey,
                width: 40,
                height: 40,
                color: TColors.white,
                
                ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(TSizes.md),
              backgroundColor: TColors.black,
              side: const BorderSide(color: TColors.black),
            ),
             child: const Text('Ajouter au panier'),
             )
        ],
      ),
    );
  }
}