import 'package:flutter/material.dart';
import '../../../features/authentication/screens/home_page/Achat_vente/Images_body/rounded_container.dart';
import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';
import '../../../utils/helpers/helper_functions.dart';
import 'brand_card.dart';

class BrandShowcase extends StatelessWidget {
  final List<String> images; // Déclarer la liste des images

  const BrandShowcase({
    super.key, 
    required this.images, // Récupérer les images depuis le constructeur
  });

  @override
  Widget build(BuildContext context) {
    return RoundedContainer(
      showBorder: true,
      borderColor: TColors.darkGrey,
      padding: const EdgeInsets.all(TSizes.md),
      backgroundColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
      child: Column(
        children: [
          // Marque avec produits
          const BrandCard(title: 'NIKE', subtitle: '25 PRODUCTS'),
           const SizedBox(height: TSizes.spaceBtwItems),
          
          // Marques avec les 3 top produits
          Row(
            children: images.map((image) => brandTopProductImageWidget(image, context)).toList(),
          ),
        ],
      ),
    );
  }


// Widget pour afficher les produits avec l'image dynamique
Widget brandTopProductImageWidget(String image, BuildContext context) {
  return Expanded(
    child: RoundedContainer(
      height: 130,
      width: 130,
      padding: const EdgeInsets.all(TSizes.md),
      margin: const EdgeInsets.only(right: TSizes.sm),
      backgroundColor: THelperFunctions.isDarkMode(context) ? TColors.darkGrey : TColors.light,
      child: Image.asset(image), // Utilisation de Image.asset pour afficher l'image dynamique
    ),
  );
}
}