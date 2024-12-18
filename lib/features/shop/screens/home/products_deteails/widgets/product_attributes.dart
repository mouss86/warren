import 'package:flutter/material.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/Images_body/rounded_container.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/Images_body/texts/product_title_text.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/texts/section_heading.dart';
import 'package:warren/features/shop/screens/home/products_deteails/widgets/product_price_text.dart';

import '../../../../../../common/chips/choice_chip.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/helpers/helper_functions.dart';

class ProductAttributes extends StatelessWidget {
  const ProductAttributes({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Column(
      children: [
        // selectionner l'attribue du prix et la description
        RoundedContainer(
          padding: const EdgeInsets.all(TSizes.md),
          backgroundColor: dark ? TColors.darkerGrey : TColors.light,
          child: Column(
            children: [
              // titre, prix, le status du stock
              Row(
                children: [
                  SectionHeading(title: 'Variation', showActionButton: false),
                  SizedBox(width: TSizes.spaceBtwItems),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const ProductTitleText(
                              title: 'Prix :', smallSize: true),
                          // prix actuel
                          Text(
                            '8500fr',
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall!
                                .apply(decoration: TextDecoration.lineThrough),
                          ),
                          const SizedBox(width: TSizes.spaceBtwItems),

                          // Prix de sold
                          const ProductPriceText(Price: '7500fr', title: '')
                        ],
                      ),
                      // stock

                      Row(
                        children: [
                          // prix actuel
                          ProductTitleText(title: 'Stock', smallSize: true),
                          Text('In Stock',
                              style: Theme.of(context).textTheme.titleMedium),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              ProductTitleText(
                title: 'Cette description du produit ne peut aller au dela de 4 lignes',
                smallSize: true,
                maxLines: 4,
                ),
            ],
          ),
        ),
        const SizedBox(height: TSizes.spaceBtwItems),
        // Attributes
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Couleurs', showActionButton: false,),
            SizedBox(height: TSizes.spaceBtwItems /2),
            Wrap(
              spacing: 8,
              children: [
            ChoiceClip(text: 'Green', selected: true, onSelected: (value){}),
            ChoiceClip(text: 'Blue', selected: false, onSelected: (value){}),
            ChoiceClip(text: 'Yellow', selected: false, onSelected: (value){}),
            ChoiceClip(text: 'Green', selected: true, onSelected: (value){}),
            ChoiceClip(text: 'Blue', selected: false, onSelected: (value){}),
            ChoiceClip(text: 'Yellow', selected: false, onSelected: (value){}),
            ChoiceClip(text: 'Green', selected: true, onSelected: (value){}),
            ChoiceClip(text: 'Blue', selected: false, onSelected: (value){}),
            ChoiceClip(text: 'Yellow', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SectionHeading(title: 'Taille', showActionButton: false),
            SizedBox(height: TSizes.spaceBtwItems /2),
            Wrap(
               spacing: 8,
              children: [
            ChoiceClip(text: 'EU 34', selected: true, onSelected: (value){}),
            ChoiceClip(text: 'EU 36', selected: false, onSelected: (value){}),
            ChoiceClip(text: 'EU 38', selected: false, onSelected: (value){}),
            ChoiceClip(text: 'EU 40', selected: true, onSelected: (value){}),
            ChoiceClip(text: 'EU 42', selected: false, onSelected: (value){}),
            ChoiceClip(text: 'EU 44', selected: false, onSelected: (value){}),
            ChoiceClip(text: 'EU 46', selected: true, onSelected: (value){}),
            ChoiceClip(text: 'EU 48', selected: false, onSelected: (value){}),
            ChoiceClip(text: 'EU 50', selected: false, onSelected: (value){}),
              ],
            )
          ],
        ),
      ],
    );
  }
}


