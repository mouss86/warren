import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/Images_body/texts/brand_title_text.dart';

import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/enum Tex.dart';
import '../../../../../../../utils/constants/sizes.dart';

class BrandTitleTextAvecVerifiedVerifiedIcon extends StatelessWidget {
  const BrandTitleTextAvecVerifiedVerifiedIcon({
    super.key,
    this.textColor,
    this.maxLines = 1,
    required this.title,
    this.iconColor = TColors.primary,
    this.textAlign = TextAlign.center,
    this.brandTextSize = TextSizes.small,
  });

  
  final String title;
  final int maxLines;
  final Color? textColor, iconColor;
  final TextAlign? textAlign;
  final TextSizes brandTextSize;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: BrandTitleText(
            title: title,
            color: textColor,
            maxLines: maxLines,
            textAlign: textAlign,
            brandTextSize: brandTextSize,
            ),
          ),
          const SizedBox(width: TSizes.xs),
          Icon(Iconsax.verify5, color: iconColor, size: TSizes.iconXs,),
      ],
    );
  }
}