import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/Images_body/Rounded_image1.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/Images_body/texts/product_title_text.dart';
import 'package:warren/features/shop/screens/home/products_deteails/widgets/product_detail.dart';
import 'package:warren/utils/constants/image_strings.dart';
import 'package:warren/utils/helpers/helper_functions.dart';
import '../../../../../../../common/styles/shadows.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/sizes.dart';
import '../../Images_body/rounded_container.dart';
import '../../Images_body/texts/brand_title_text_avec_verified_verified_icon.dart';

// Votre classe ProductCardVertical
class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetail()),
      child: Container(
        width: 180,
        padding: EdgeInsets.all(1),
        decoration: BoxDecoration(
          boxShadow: [ShadowStyle.verticalProductShadow],
          borderRadius: BorderRadius.circular(TSizes.productImageRadius),
          color: dark ? TColors.darkerGrey : TColors.white,
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              padding: EdgeInsets.all(TSizes.sm),
              backgroundColor: dark ? TColors.dark : TColors.light,
              child: Stack(
                children: [
                  RoundedImage(imageUrl: TImages.nikerouge,applyImageRadius: true, border: Border.all(),),
                  
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
                      radius: TSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(horizontal: TSizes.sm, vertical: TSizes.xs),
                      child: Text('26%',
                          style: Theme.of(context)
                              .textTheme
                              .labelLarge!
                              .apply(color: TColors.black)),
                    ),
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        color: dark ? TColors.black.withOpacity(0.9) : TColors.light.withOpacity(0.9),
                      ),
                      child: IconButton(
                        onPressed: () {},
                        icon: Icon(Iconsax.heart5),
                        color: Colors.red,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: TSizes.spaceBtwSections / 2),
            Padding(
              padding: EdgeInsets.only(left: TSizes.sm),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'Sneakers Nike ',
                    smallSize: true,
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections / 2),
                  BrandTitleTextAvecVerifiedVerifiedIcon(title: 'ADCT',),
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '20.000',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(TSizes.cardRadiusMd),
                      bottomRight: Radius.circular(TSizes.productImageRadius),
                    ),
                  ),
                  child: SizedBox(
                      width: 20 * 1.2,
                      height: 20 * 1.2,
                      child: Center(
                          child: const Icon(
                        Iconsax.add,
                        color: TColors.light,
                      ))),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
