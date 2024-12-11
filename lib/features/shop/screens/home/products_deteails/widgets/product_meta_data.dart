import 'package:flutter/material.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/Images_body/texts/brand_title_text_avec_verified_verified_icon.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/Images_body/texts/product_title_text.dart';
import 'package:warren/features/shop/screens/home/products_deteails/widgets/product_price_text.dart';
import 'package:warren/utils/constants/colors.dart';
import 'package:warren/utils/constants/enum%20Tex.dart';
import 'package:warren/utils/constants/sizes.dart';
import '../../../../../../utils/helpers/helper_functions.dart';
import '../../../../../authentication/screens/home_page/Achat_vente/Images_body/rounded_container.dart';

class ProductMetaData extends StatelessWidget {
  const ProductMetaData({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context); // Calcul dynamique basé sur le contexte

    return Column( // Retirer le 'const' car 'context' est utilisé ici
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Price & Sale Price
        Row(
          children: [
            // Container pourcentage
            RoundedContainer(
              radius: TSizes.sm,
              backgroundColor: TColors.amber.withOpacity(0.8),
              padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
              child: Text(
                '26%', 
                style: Theme.of(context).textTheme.labelLarge!.apply(
                  color: dark ? TColors.white : TColors.black, // Couleur de texte basée sur le mode sombre
                ),
              ),
            ),
            SizedBox(width: TSizes.spaceBtwItems),

            // Price barré
            Flexible( // Utilisation de Flexible pour éviter l'overflow
              child: Text(
                '2000FR',
                style: Theme.of(context).textTheme.titleSmall!.apply(
                  decoration: TextDecoration.lineThrough,
                ),
                overflow: TextOverflow.ellipsis, // Gérer l'overflow
              ),
            ),
            SizedBox(width: TSizes.spaceBtwItems),

            // Prix final
            ProductPriceText(
              Price: '14800FR',
              title: null,
              isLarge: true,
            ),
          ],
        ),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Titre du produit
        ProductTitleText(title: 'Nike Air Jordan'),
        SizedBox(height: TSizes.spaceBtwItems / 1.5),

        // Status du stock
        Row(
          children: [
            ProductTitleText(title: 'Status'),
            SizedBox(width: TSizes.spaceBtwItems),
            Flexible( // Utilisation de Flexible pour le texte
              child: Text(
                'En Stock',
                style: Theme.of(context).textTheme.titleMedium,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        SizedBox( height: TSizes.spaceBtwItems / 1.5),

        // MARQUES( Brands)
        BrandTitleTextAvecVerifiedVerifiedIcon(title: 'Nike', brandTextSize: TextSizes.medium,)
      ],
    );
  }
}
