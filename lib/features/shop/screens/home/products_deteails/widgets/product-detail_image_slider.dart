import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../common/widgets/success_screen/custom_shapes/containers/curved_edges/curved_edges_widget.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/helpers/helper_functions.dart';
import '../../../../../authentication/screens/home_page/Achat_vente/Images_body/Rounded_image1.dart';
import '../../../../../authentication/screens/home_page/Achat_vente/appbar/appbar.dart';

class ProductImageSlider extends StatelessWidget {
  const ProductImageSlider({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return TCurvedEdgeWidget(
      child: Container(
        color: dark ? TColors.darkerGrey : TColors.light,
        child: Stack(
          children: [
            // Image principale large
            SizedBox(
              height: 400, // Définir explicitement la taille de l'image
              child: Padding(
                padding: const EdgeInsets.all(TSizes.productImageRadius * 2),
                child: Center(
                  child: Image.asset(
                    TImages.nikerouge,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
            // Image réduite, positionnée en haut à gauche
            Positioned(
              right: 0,
              bottom: 30,
              left: TSizes.spaceBtwItems,
              child: SizedBox(
                height: 120,
                child: ListView.separated(
                  separatorBuilder: (_, __) =>
                      const SizedBox(width: TSizes.spaceBtwItems),
                  itemCount: 7,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (_, index) => RoundedImage(
                    width: 100,
                    backgroundColor: dark ? TColors.dark : TColors.white,
                    border: Border.all(color: TColors.primary),
                    padding: const EdgeInsets.all(TSizes.sm),
                    imageUrl: TImages.nikevertblanc,
                  ),
                ),
              ),
            ),
            TAppBar(
              showBackArrow: true,
            ),
          ],
        ),
      ),
    );
  }
}
