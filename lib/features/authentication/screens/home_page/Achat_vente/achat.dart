import 'package:flutter/material.dart';

import '../../../../../common/widgets/success_screen/custom_shapes/containers/primary_header_container.dart';
import '../../../../../utils/constants/sizes.dart';
import 'Images_body/promo_slider.dart';
import 'achat_vente_TAppBar.dart';
import 'popular_categories_img_text-widget/home_categories.dart';
import 'products/cards/product_card_vertical.dart';
import 'search_container.dart';
import 'texts/section_heading.dart';

class AchatScreen extends StatefulWidget {
  // Retirer le mot-clé const ici
  const AchatScreen({Key? key}) : super(key: key); // Utiliser super(key: key) pour transmettre à la classe parente

  @override
  _AchatScreenState createState() => _AchatScreenState();
}

class _AchatScreenState extends State<AchatScreen> {
  // Déclarez le TextEditingController dans l'état
  TextEditingController textEditingController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,  // Ajout pour un alignement plus précis
          children: [
            // Header Section with TAppBar
            PrimaryHeaderContainer(
              child: Column(
                children: [
                  const Achat_TAppBar(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Searchbar
                  SearchContainer(
                          text: 'Rechercher les produits',
                          showBorder: true, // Bordure visible
                          showBackground: true, // Fond visible
                          padding: EdgeInsets.symmetric(vertical: TSizes.sm), // Padding ajusté
                          controller: textEditingController,  // Utilisation du contrôleur dans l'état
                        ),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Heading
                  Padding(
                    padding: EdgeInsets.only(left: TSizes.defaultSpace),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SectionHeading(title: 'Categories Populaires', showActionButton: false, textColor: Colors.white,),
                        const SizedBox(height: TSizes.spaceBtwSections),
                        
                        // Categories List
                        HomeCategories()
                      ],
                    ),
                  ),
                  const SizedBox(height: TSizes.spaceBtwSections,)
                ],
              ),
            ),

            // body 
            Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              // CarouselSlider - faire defiler les images de gauche a droite et visversa
              child: Column(
                children: [
                  PromoSlider(),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // heading
                  SectionHeading(title: 'Produits Populaires', onPressed: (){},),
                  const SizedBox(height: TSizes.spaceBtwSections),

                  // Categories populaires
                  // GridView.builder Multiplier les ProductCardVertical()
                  GridView.builder(
                    itemCount: 2, // La quantité de item qu'on souhaiterait affiché dans le GridView.builder.
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: TSizes.gridViewSpacing,
                    crossAxisSpacing: TSizes.gridViewSpacing,
                    mainAxisExtent: 289,
                    ),
                    itemBuilder: (_, index) => ProductCardVertical(),
                  ),
                  
                ],
              )
            )
          ],
        ),
      ),
    );
  }
}

