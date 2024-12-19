import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/device/device_utility.dart';
import '../../../../../utils/helpers/helper_functions.dart';
import 'popular_categories_img_text-widget/clothes_categorie_img.dart';
import 'popular_categories_img_text-widget/cosmetic_categorie_img.dart';
import 'popular_categories_img_text-widget/shoes_categorie_img.dart';


class SearchContainer extends StatelessWidget {
  const SearchContainer({
    super.key, 
    required this.text,
    this.icon = Iconsax.search_normal, 
    this.showBackground = true, 
    this.showBorder = true,
    this.onTap, 
    this.controller,
    this.onChanged, 
    required this.padding,
  });

  final String text;
  final IconData? icon;
  final bool showBackground, showBorder;
  final VoidCallback? onTap;
  final EdgeInsets padding;
  final TextEditingController? controller; // Contrôleur pour le champ de texte
  final ValueChanged<String>? onChanged;  // Callback pour gérer le texte saisi

  // Fonction pour naviguer vers les catégories basées sur le texte de recherche
  void _navigateToCategory(BuildContext context, String query) {
    if (query.toLowerCase() == 'vetements') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => ClothesCategorieImg()),  // Naviguer vers l'écran des vêtements
      );
    } else if (query.toLowerCase() == 'chaussures') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => ShoesCategorieImg()),  // Naviguer vers l'écran des chaussures
      );
    } else if (query.toLowerCase() == 'cosmetic') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => CosmeticCategorieImg()),  // Naviguer vers l'écran des cosmétiques
      );
    } else {
      // Si aucune correspondance, afficher un message ou effectuer une action par défaut
      print("Aucun résultat trouvé pour '$query'");
    }
  }

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: TSizes.defaultSpace),
      child: Container(
        width: TDeviceUtils.getScreenWidth(context),
        padding: const EdgeInsets.all(TSizes.md),
        decoration: BoxDecoration(
          color: showBackground ? (dark ? TColors.dark : TColors.light) : Colors.transparent,
          borderRadius: BorderRadius.circular(TSizes.cardRadiusLg),
          border: showBorder ? Border.all(color: Colors.white) : null,
        ),
        child: Row(
          children: [
            // Icône de recherche cliquable
            GestureDetector(
              onTap: () {
                if (controller != null && controller!.text.isNotEmpty) {
                  // Appel de la fonction de navigation lorsque l'icône de recherche est cliquée
                  _navigateToCategory(context, controller!.text);
                }
              },
              child: //SizedBox(height: 30,width: 30, child: Container(color:  Colors.blue)), 
              Icon(icon, color: Colors.grey),  // L'icône de recherche
            ),
            SizedBox(width: TSizes.spaceBtwItems),
            // Champ de texte pour la saisie de la recherche
            Expanded(
              child: TextField(
                controller: controller,  // Utilisation du TextEditingController
                onChanged: onChanged,  // Fonction de rappel pour chaque changement de texte
                decoration: InputDecoration(
                  hintText: text,  // Texte d'indication
                  border: InputBorder.none,  // Retirer la bordure par défaut
                  hintStyle: TextStyle(color: Colors.grey),
                ),
                style: Theme.of(context).textTheme.bodySmall,  // Style du texte
              ),
            ),
          ],
        ),
      ),
    );
  }
}

