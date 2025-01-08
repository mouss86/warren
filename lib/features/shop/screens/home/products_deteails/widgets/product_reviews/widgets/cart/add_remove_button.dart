
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../../../../utils/constants/colors.dart';
import '../../../../../../../../../utils/constants/sizes.dart';
import '../../../../../../../../../utils/helpers/helper_functions.dart';
import '../../../../../../../../authentication/screens/home_page/Achat_vente/Images_body/circular_icon.dart';

class ProductQuantityWithAddRemove extends StatelessWidget {
  const ProductQuantityWithAddRemove({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(width: 70),
        // Add and remove buttons
        CircularIcon(
          icon: Iconsax.minus,
          width: 31,
          height: 31,
          size: TSizes.md,
          color: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.black,
          backgroundColor: THelperFunctions.isDarkMode(context)? TColors.darkGrey : TColors.light,
    
        ),
        SizedBox(width: TSizes.spaceBtwItems),
        Text("2", style: Theme.of(context).textTheme.titleSmall),
         SizedBox(width: TSizes.spaceBtwItems),
         CircularIcon(
          icon: Iconsax.add,
          width: 31,
          height: 31,
          size: TSizes.md,
          color: TColors.white,
          backgroundColor: TColors.primary,
    
        ),
      ],
    );
  }
}
