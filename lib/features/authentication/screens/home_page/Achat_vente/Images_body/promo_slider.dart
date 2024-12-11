


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../../common/widgets/success_screen/custom_shapes/containers/circular_container.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/image_strings.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../shop/controllers/home_controller.dart';
import 'Rounded_image1.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
  });

 @override
  Widget build(BuildContext context) {
    // Utilisation de Get.find si le contrôleur a déjà été injecté
    final controller = Get.put(HomeController());  // ou Get.put(HomeController()) si le contrôleur n'est pas encore injecté


    return Column(
      children: [
        CarouselSlider(
          items: [
            RoundedImage(imageUrl: TImages.sneakers, border: Border.all(),),
            RoundedImage(imageUrl: TImages.jacket, border: Border.all(),),
            RoundedImage(imageUrl: TImages.manekImage, border: Border.all(),),
            ], options: CarouselOptions(
          viewportFraction: 1,
          onPageChanged: (index, _) => controller.updatePageIndicator(index)
        ),
        ),
        const SizedBox(height: TSizes.spaceBtwSections),
        Center(
          child: Obx(
            () => Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                for(int i = 0; i < 3; i++)// la propriete pour multiplier le TCircularContainer * 3
                TCircularContainer(
                  width: 20,
                  height: 4,
                  margin: EdgeInsets.only(right: 10),
                  backgroundColor: controller.carousalCurrentIndex.value == i ?
                  TColors.primary : TColors.light,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


