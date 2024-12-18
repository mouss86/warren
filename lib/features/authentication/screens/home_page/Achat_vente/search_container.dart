


import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';

class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, 
    required this.text,
     this.icon = Iconsax.search_normal, 
      this.showBackground = true, 
       this.showBorder = true,
       this.onTap, 
       
       this.controller,
       this.onChanged, required this.padding,

  });

  final String text;
final IconData? icon;
final bool showBackground, showBorder;
final VoidCallback? onTap;
 final EdgeInsets padding;
  final TextEditingController? controller; // Contrôleur pour le champ de texte
  final ValueChanged<String>? onChanged;  // Callback pour gérer le texte saisi


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
        child: Container(
          width: TDeviceUtils.getScreenWidth(context),
          padding: const EdgeInsets.all(TSizes.md),
          decoration: BoxDecoration(
            color: showBackground? dark ? TColors.dark : TColors.light: Colors.transparent,
            borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
            border: showBorder ?Border.all(color:Colors.white) : null
          ),
          child: Row(
            children: [
              Icon(icon, color: Colors.grey),
              SizedBox(width: TSizes.spaceBtwItems),
              // TextField pour la saisie de texte
              Expanded(
                child: TextField(
                  controller: controller, // Utilisation du TextEditingController
                  onChanged: onChanged, // Fonction de rappel pour chaque changement de texte
                  decoration: InputDecoration(
                    hintText: text, // Texte d'indication
                    border: InputBorder.none, // Retirer la bordure par défaut
                    hintStyle: TextStyle(color: Colors.grey),
                  ),
                  style: Theme.of(context).textTheme.bodySmall, // Style du texte
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
