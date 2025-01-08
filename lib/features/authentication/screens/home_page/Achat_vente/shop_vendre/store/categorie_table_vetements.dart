

import 'package:flutter/material.dart';
import 'package:warren/common/widgets/success_screen/layouts/grid_layout.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/products/cards/product_card_vertical.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/texts/section_heading.dart';

import '../../../../../../../common/widgets/brands/brand_showcasevetement.dart';
import '../../../../../../../utils/constants/image_strings.dart';
import '../../../../../../../utils/constants/sizes.dart';

class CategoryTabV extends StatelessWidget {
  const CategoryTabV({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Marques
              const BrandShowcaseV(
                images: [
                  TImages.jeans1,
                  TImages.jeans2,
                  TImages.jeansjacket,
                  TImages.joggingadidas,
                 
                  TImages.jeansjogging
                ],
              ),
              const BrandShowcaseV( // j'ai ajouter un deuxieme
                images: [
                  TImages.jacket,
                  TImages.tshirtbalanciagaB,
                  TImages.tshirtbalanciagaN,
                  TImages.tshirtvertblanc,
                 
                ],
              ),
              const SizedBox(height: TSizes.spaceBtwItems),

              // Autres produits
              SectionHeading(title: 'Produits que vous pourriez aimer', onPressed: () {}),
              const SizedBox(height: TSizes.spaceBtwItems),

              // GridLayout pour afficher des produits
              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) => const ProductCardVertical(),
                
              ),
               const SizedBox(height: TSizes.spaceBtwItems),
            ],
          ),
        ),
      ],
    );
  }
}
