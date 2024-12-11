import 'package:flutter/material.dart';
import 'package:warren/common/widgets/success_screen/layouts/grid_layout.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/products/cards/product_card_vertical.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/texts/section_heading.dart';

import '../../../../../../../common/widgets/brands/brand_showcase.dart';
import '../../../../../../../utils/constants/image_strings.dart';
import '../../../../../../../utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

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
              const BrandShowcase(
                images: [
                  TImages.jacket,
                  TImages.adidasdifferentcolor,
                  TImages.nikevertblanc,
                 
                  TImages.adidasbleublanc
                ],
              ),
              const BrandShowcase( // j'ai ajouter un deuxieme
                images: [
                  TImages.jacket,
                  TImages.adidasdifferentcolor,
                  TImages.nikevertblanc,
                  TImages.adidasbleublanc
                 
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
