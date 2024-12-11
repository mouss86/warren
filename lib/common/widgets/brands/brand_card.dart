import 'package:flutter/material.dart';
import 'package:warren/utils/constants/image_strings.dart'; // Importer le fichier de constantes si nécessaire

class BrandCard extends StatelessWidget {
  final String title; // Titre de la marque
  final String subtitle; // Sous-titre de la marque

  // Constructeur
  const BrandCard({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5.0, // Élévation de la carte pour un effet d'ombre
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Coins arrondis
      ),
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 15), // Marges
      child: Padding(
        padding: const EdgeInsets.all(10.0), // Padding interne de la carte
        child: Row(
          children: [
            // Image NikeLogo (CircleAvatar)
            CircleAvatar(
              radius: 30, // Taille de l'icône
              backgroundImage: AssetImage(TImages.nikeicon), // Utilisation de la constante nikeLogo
            ),
            SizedBox(width: 15), // Espacement entre l'image et le texte
            // Column avec le titre et le sous-titre
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Titre de la marque
                Text(
                  title,
                  style: Theme.of(context).textTheme.titleLarge, // Utilise un style de texte prédéfini
                ),
                // Sous-titre de la marque
                Text(
                  subtitle,
                  overflow: TextOverflow.ellipsis,
                   style: Theme.of(context).textTheme.labelMedium,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
