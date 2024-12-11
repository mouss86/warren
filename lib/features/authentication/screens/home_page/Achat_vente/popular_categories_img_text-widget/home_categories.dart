

import 'package:flutter/material.dart';

import '../../../../../../utils/constants/image_strings.dart';
import 'vertical_img_text.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

 @override
  Widget build(BuildContext context) {
    // Exemple de données dynamiques
    List<Map<String, String>> categories = [
      {'image': TImages.clothesIcon, 'title': 'clothes'},
      {'image': TImages.shoesIcon, 'title': 'Shoes'},
      {'image': TImages.cosmeticIcon, 'title': 'Cosmetic'},
      {'image': TImages.fourniture, 'title': 'Fourniture'},
      {'image': TImages.cosmeticIcon, 'title': 'Cosmetic'},
      {'image': TImages.jeweleryIcon, 'title': 'Jewelery'},
      {'image': TImages.toyIcon, 'title': 'Toys'},
      {'image': TImages.animalIcon, 'title': 'Animals'},
      // Ajoutez plus d'éléments si nécessaire
    ];



    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 8, // Utilisez la longueur de la liste dynamique
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          String title = categories[index]['title']!;
          String image = categories[index]['image']!;

          return VerticalImageText(
            image: image,
            title: title,
            onTap: () {
              // Action lors du tap sur l'image
            },
          );
        },
      ),
    );
  }
}