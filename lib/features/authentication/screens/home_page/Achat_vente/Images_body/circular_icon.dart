import 'package:flutter/material.dart';
import 'package:warren/utils/helpers/helper_functions.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';

class CircularIcon extends StatelessWidget {
  

  // Utilisation de paramètres nommés avec le mot-clé 'required'
  const CircularIcon( {
    super.key, // Paramètre clé (optionnel)
    required this.icon, 
    this.width,
    this.height,
    this.size = TSizes.lg,
    this.onPressed, // Paramètre requis 'onPressed'
    this.color, // Paramètre de couleur pour l'icône avec une valeur par défaut
    this.backgroundColor,  // Paramètre de couleur pour le fond avec une valeur par défaut
  });

  final double? width, height,size;
  final IconData icon; // Définition du paramètre icon
  final Color? color; // Couleur de l'icône
  final Color? backgroundColor; 
  final VoidCallback? onPressed;// Couleur de fond

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: backgroundColor != null
        ? backgroundColor!
        :THelperFunctions.isDarkMode(context)
        ? TColors.black.withOpacity(0.9)
        : TColors.white.withOpacity(0.9),
        borderRadius: BorderRadius.circular(100),
      ),
      child: IconButton(onPressed: onPressed, icon: Icon(icon,color: color, size: size)),
      
    );
  }
}
