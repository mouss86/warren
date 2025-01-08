import 'package:flutter/material.dart';
import '../../../../../../utils/constants/image_strings.dart';
import 'animaux_categorie_img.dart';
import 'bijoux_categorie_img.dart';
import 'clothes_categorie_img.dart';
import 'cosmetic_categorie_img.dart';
import 'fourniture_categorie_img.dart';
import 'jouets_categorie_img.dart';
import 'shoes_categorie_img.dart';
import 'vertical_img_text.dart';
// Assurez-vous d'importer la page cible

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    // Exemple de données dynamiques
    List<Map<String, String>> categories = [
      {'image': TImages.clothesIcon, 'title': 'Vetements'},
      {'image': TImages.shoesIcon, 'title': 'Chaussures'},
      {'image': TImages.cosmeticIcon, 'title': 'Cosmetic'},
      {'image': TImages.fourniture, 'title': 'Meubles'},
      {'image': TImages.jeweleryIcon, 'title': 'Bijoux'},
      {'image': TImages.toyIcon, 'title': 'Jouets'},
      {'image': TImages.animalIcon, 'title': 'Animaux'},
      // Ajoutez plus d'éléments si nécessaire
    ];

    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: categories.length, // Utilisation de la longueur de la liste dynamique
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) {
          String title = categories[index]['title']!;
          String image = categories[index]['image']!;

          return InkWell(
            onTap: () {
              // Naviguer vers la page appropriée en fonction du titre de la catégorie
              if (title == 'Chaussures') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ShoesCategorieImg()), // Redirection vers la page "FavouriteScreen"
                );
              } else if (title == 'Vetements') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => ClothesCategorieImg()), // Redirection vers la page "ClothesCategorieImg"
                );
              } else if (title == 'Meubles') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => FournitureCategorieImg()), // Redirection vers la page "ClothesCategorieImg"
                );
              } else if (title == 'Cosmetic') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => CosmeticCategorieImg()), // Redirection vers la page "ClothesCategorieImg"
                );
              }
              else if (title == 'Bijoux') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => BijouxCategorieImg()), // Redirection vers la page "ClothesCategorieImg"
                );
              } else if (title == 'Jouets') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => JouetsCategorieImg()), // Redirection vers la page "ClothesCategorieImg"
                );
              }
              else if (title == 'Animaux') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => AnimauxCategorieImg()), // Redirection vers la page "ClothesCategorieImg"
                );
              }
              // Ajoutez des conditions supplémentaires pour d'autres titres si nécessaire
            },
            child: VerticalImageText(
              image: image,
              title: title,
            ),
          );
        },
      ),
    );
  }
}
