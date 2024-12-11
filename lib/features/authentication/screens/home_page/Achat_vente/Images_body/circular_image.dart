import 'package:flutter/material.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../../utils/helpers/helper_functions.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
    this.width = 57,
    this.height = 57,
    this.overlayColor,
    this.backgroundColor,
    required this.image,
    this.padding = TSizes.sm,
    this.isNetworkImage = false,
    this.fit,  // Ajout du paramètre fit
  });

  final BoxFit? fit;
  final String image;
  final bool isNetworkImage;
  final Color? overlayColor;
  final Color? backgroundColor;
  final double width, height, padding;  // Correction des noms et types

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ?? (THelperFunctions.isDarkMode(context) ? TColors.black : TColors.white),
        borderRadius: BorderRadius.circular(100),
      ),
   child: Center(  // Correction de 'center' -> 'Center'
        child: Image(
          fit: fit ?? BoxFit.cover,  // Utilisation de 'fit' pour ajuster l'image
          image: isNetworkImage
              ? NetworkImage(image) 
              : AssetImage(image) as ImageProvider,  // Cast correct vers ImageProvider
          color: overlayColor,
        ),
      ),
    );
  }
}