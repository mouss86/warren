


import 'package:flutter/material.dart';

import '../../../../../../../../../utils/constants/colors.dart';
import '../../../../../../../../../utils/constants/image_strings.dart';
import '../../../../../../../../../utils/constants/sizes.dart';
import '../../../../../../../../../utils/helpers/helper_functions.dart';
import '../../../../../../../../authentication/screens/home_page/Achat_vente/Images_body/Rounded_image1.dart';
import '../../../../../../../../authentication/screens/home_page/Achat_vente/Images_body/texts/brand_title_text.dart';
import '../../../../../../../../authentication/screens/home_page/Achat_vente/Images_body/texts/product_title_text.dart';

class CartItemT extends StatelessWidget {
  const CartItemT({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
          const SizedBox(width: TSizes.spaceBtwItems),
          // title, price, & size
          Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              BrandTitleText(title: "Nike"),
              ProductTitleText(title: "Sneakers Adidas Blanc & Blue", maxLines: 1,),
              // Attributes
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(text: "Color", style: Theme.of(context).textTheme.bodySmall),
                     TextSpan(text: "Blanc & Blue", style: Theme.of(context).textTheme.bodyLarge),
                     TextSpan(text: "Size", style: Theme.of(context).textTheme.bodySmall),
                     TextSpan(text: "EU 08", style: Theme.of(context).textTheme.bodyLarge),
    
                  ],
                )
              )
            ],
          )
      ],
    );
  }
}