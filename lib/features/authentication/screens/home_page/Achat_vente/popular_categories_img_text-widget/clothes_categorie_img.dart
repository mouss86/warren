import 'package:flutter/material.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/appbar/appbar.dart';

import '../../../../../../utils/constants/image_strings.dart';

class ClothesCategorieImg extends StatelessWidget {
  const ClothesCategorieImg({super.key});

  @override
  Widget build(BuildContext context) {
    // Liste des images à afficher en utilisant TImages
    List<String> images = [
      TImages.tshirtvertblanc,
      TImages.tshirtblancnoir,
      TImages.jeansjacket,
      TImages.jeansjogging,
      TImages.jeans2,
      TImages.jeans1,
      TImages.tshirtbalanciagaB,
      TImages.tshirtbalanciagaN,
      TImages.jacket,
    ];

    // Liste des titres des images (optionnel)
    List<String> titles = [
      'T-shirt vert blanc',
      'T-shirt blanc noir',
      'Jeans Jacket',
      'Jeans Jogging',
      'Jeans 2',
      'Jeans 1',
      'T-shirt Balanciaga B',
      'T-shirt Balanciaga N',
      'Jacket',
    ];

    return Scaffold(
      appBar: TAppBar(
        title: Text('Vetements', style: TextStyle(fontSize: 20, color: Colors.black)),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: GridView.builder(
            shrinkWrap: true, // Permet d'utiliser un GridView dans un ScrollView
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3, // Trois colonnes
              crossAxisSpacing: 10.0, // Espacement horizontal entre les images
              mainAxisSpacing: 10.0, // Espacement vertical entre les images
              childAspectRatio: 0.75, // Ajuste la taille des images pour qu'elles ne soient pas carrées
            ),
            itemCount: images.length,
            itemBuilder: (_, index) { //  itemBuilder build all the images
              return GestureDetector(
                onTap: () {
                  // Action lors du clic sur l'image
                  print('Image clicked: ${titles[index]}');
                },
                child: Column(
                  children: [
                    // Affichage de l'image
                    Expanded(
                      child: Image.asset(
                        images[index],
                        fit: BoxFit.cover, // Assure que l'image couvre la zone disponible
                      ),
                    ),
                    // Affichage du titre
                    Text(
                      titles[index],
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
