import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/utils/constants/colors.dart';

class RatingBarIndicator extends StatelessWidget {
  const RatingBarIndicator({super.key,
   required int itemSize, 
   required double rating, 
   required Color unratedColor, 
   required Icon Function(dynamic _, dynamic __) itemBuilder});

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      rating: 4.5,
                itemSize:20,
                unratedColor: TColors.grey,
                itemBuilder:(_, __) => const Icon(Iconsax.star1, color: TColors.primary,)
    );
  }
}