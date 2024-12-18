

import 'package:flutter/material.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/appbar/appbar.dart';

import '../../../../../../utils/constants/image_strings.dart';

class JouetsCategorieImg extends StatelessWidget {
  const JouetsCategorieImg({super.key});

  @override
  Widget build(BuildContext context) {
    // Liste des images à afficher en utilisant TImages
    List<String> images = [
      TImages.bicyclette,
      TImages.bracelet,
      TImages.voiturette ,
      TImages.cubecolore ,
      TImages.jouets2,
      TImages.jouets3,
      TImages.jouetsenbois,
      TImages.papanoel,
      TImages.helicopter,
    ];

    // Liste des titres des images (optionnel)
    List<String> titles = [
      'bicyclette',
      'bracelet',
      'voiturette',
      'cubecoloré',
      'jouets2',
      'jouets3',
      'jouet en bois',
      'papa noel',
      'helicopter',
    ];

    return Scaffold(
      appBar: TAppBar(
        title: Text('Jouets', style: TextStyle(fontSize: 20, color: Colors.black)),
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
            itemBuilder: (_, index) {
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