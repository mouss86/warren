
import 'package:flutter/material.dart';
import 'package:warren/common/widgets/brands/brand_showcaseelectronique.dart';
import 'package:warren/common/widgets/success_screen/layouts/grid_layout.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/products/cards/product_card_vertical.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/texts/section_heading.dart';

import '../../../../../../../utils/constants/image_strings.dart';
import '../../../../../../../utils/constants/sizes.dart';

class CategoryTabE extends StatelessWidget {
  const CategoryTabE({super.key});

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
              const BrandShowcaseE(
                images: [
                  TImages.airpods,
                  TImages.applewatch,
                  TImages.applewatch,
                  TImages.appareilphotosony,
                 
                  TImages.projecteur1
                ],
              ),
              const BrandShowcaseE( // j'ai ajouter un deuxieme
                images: [
                  TImages.macbookrose,
                  TImages.musiplayer1,
                  TImages.musiplayer2,
                  TImages.sonyxperia,
                 
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
