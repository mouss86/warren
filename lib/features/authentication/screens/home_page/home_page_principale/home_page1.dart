import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/navigation_menu.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Espacement entre les éléments
          children: [
            Text('WARREN', style: TextStyle(color: Colors.green, fontSize: 20)),  // Titre à gauche
            Row(
              children: [
                TextButton(
                  onPressed: () {
                    // Ajouter l'action de paiement ici
                  },
                  child: Text('Pay', style: TextStyle(color: Colors.orange, fontSize: 20)),
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {
                    // Ajouter l'action du menu ici
                  },
                ),
              ],
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(  // Rendre le body scrollable
        child: Padding(
          padding: const EdgeInsets.all(16.0),  // Ajouter un padding autour du body
          child: Column(
            children: [
              // Première ligne de boutons
              SizedBox(height: 20),  // Espace avant les boutons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Espacement entre les boutons
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Action du bouton gauche
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(180, 80), backgroundColor: Colors.orange, // Taille du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),  // Coins arrondis
                      ),  // Couleur de fond du bouton
                    ),
                    child: Text('Course', style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(width: 10),  // Espace entre les deux boutons
                  ElevatedButton(
                    onPressed: () {
                      // Action du bouton droit
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(180, 80), backgroundColor: Colors.orange, // Taille du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),  // Coins arrondis
                      ),  // Couleur de fond du bouton
                    ),
                    child: Text('Restaurant', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              
              // Deuxième ligne de boutons en dessous de la première
              SizedBox(height: 20),  // Espace avant les nouveaux boutons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Espacement entre les boutons
                children: [
                ElevatedButton(
          onPressed: () {
            // Action de navigation vers NavigationMenu
            Get.to(() => const NavigationMenu());
          },
          style: ElevatedButton.styleFrom(
            minimumSize: Size(180, 80),  // Taille du bouton
            backgroundColor: Colors.orange,  // Couleur de fond du bouton
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),  // Coins arrondis
            ),
          ),
          child: Text('Achat & vente', style: TextStyle(color: Colors.white)),
        ),
                  SizedBox(width: 10),  // Espace entre les deux boutons
                  ElevatedButton(
                    onPressed: () {
                      // Action du bouton droit
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(180, 80), backgroundColor: Colors.orange, // Taille du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),  // Coins arrondis
                      ),  // Couleur de fond du bouton
                    ),
                    child: Text('Livraison', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
              // Deuxième ligne de boutons en dessous de la première
              SizedBox(height: 20),  // Espace avant les nouveaux boutons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,  // Espacement entre les boutons
                children: [
                  ElevatedButton(
                    onPressed: () {
                      // Action du bouton gauche
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(180, 80), backgroundColor: Colors.orange, // Taille du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),  // Coins arrondis
                      ),  // Couleur de fond du bouton
                    ),
                    child: Text('Cargaison', style: TextStyle(color: Colors.white)),
                  ),
                  SizedBox(width: 10),  // Espace entre les deux boutons
                  ElevatedButton(
                    onPressed: () {
                      // Action du bouton droit
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(180, 80), backgroundColor: Colors.orange, // Taille du bouton
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),  // Coins arrondis
                      ),  // Couleur de fond du bouton
                    ),
                    child: Text('Navigateur', style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
