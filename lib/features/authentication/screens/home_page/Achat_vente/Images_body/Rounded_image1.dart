


import 'package:flutter/material.dart';

import '../../../../../../utils/constants/sizes.dart';

class RoundedImage extends StatelessWidget {
  const RoundedImage({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.applyImageRadius = true,
    this.boder,
    this.backgroundColor,
    this.fit = BoxFit.contain,
    this.padding,
    this.isNetworkImage = false,
    this.onPressed, 
    this.borderRadius = TSizes.md, required Border border,
    
  });

  final double? width, height;
  final String imageUrl;
  final bool applyImageRadius;
  final BoxBorder? boder;
  final Color? backgroundColor;
  final BoxFit? fit;
  final EdgeInsetsGeometry? padding;
  final bool isNetworkImage;
  final VoidCallback? onPressed;
  final double borderRadius;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        padding: padding,
        decoration: BoxDecoration(
          border: boder,  // Correction de la faute de frappe de "boder" à "border"
          color: backgroundColor,
          borderRadius: BorderRadius.circular(borderRadius),  // TSizes.md peut être remplacé par une valeur fixe
        ),
        child: ClipRRect(
          borderRadius: applyImageRadius ? BorderRadius.circular(borderRadius) : BorderRadius.zero,
          child: Image(
            fit: fit,
            image: isNetworkImage
                ? NetworkImage(imageUrl) // Si c'est une image en réseau
                : AssetImage(imageUrl) as ImageProvider, // Si c'est une image locale
          ),
        ),
      ),
    );
  }
}
