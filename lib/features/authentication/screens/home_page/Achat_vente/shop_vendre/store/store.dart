import 'package:flutter/material.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/Images_body/rounded_container.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/appbar/appbar.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/shop_vendre/store/category_tab.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/texts/section_heading.dart';
import 'package:warren/utils/helpers/helper_functions.dart';
import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/enum Tex.dart';
import '../../../../../../../utils/constants/image_strings.dart';
import '../../../../../../../utils/constants/sizes.dart';
import '../../Images_body/circular_image.dart';
import '../../Images_body/texts/brand_title_text_avec_verified_verified_icon.dart';
import '../../popular_categories_img_text-widget/clothes_categorie_img.dart';
import '../../popular_categories_img_text-widget/cosmetic_categorie_img.dart';
import '../../popular_categories_img_text-widget/fourniture_categorie_img.dart';
import '../../popular_categories_img_text-widget/shoes_categorie_img.dart';
import '../../products.cart/cart_menu_icon.dart';
import '../../search_container.dart';
import 'categorie_tabe_electronique.dart';
import 'categorie_table_vetements.dart';
import 'categorie_tabmeuble.dart';

class StoreScreen extends StatefulWidget {
  // Retirer le mot-clé const ici
  const StoreScreen({Key? key}) : super(key: key); // Utiliser super(key: key) pour transmettre à la classe parente

  @override
  _StoreScreenState createState() => _StoreScreenState();
}

class _StoreScreenState extends State<StoreScreen> {
  // Déclarez le TextEditingController dans l'état
  TextEditingController textEditingController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    // Liste des images à afficher dans les containers
    final List<String> images = [
      TImages.clothesIcon,
      TImages.shoesIcon,
      TImages.cosmeticIcon,
      TImages.fourniture,
    ];

    // Liste des destinations d'écran pour chaque image
    final List<Widget> categoryScreens = [
      ClothesCategorieImg(),  // Destination pour Vetements
      ShoesCategorieImg(),    // Destination pour Chaussures
      CosmeticCategorieImg(),
      FournitureCategorieImg(), // Destination pour Fournitures
    ];

    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: TAppBar(
          title: Text(
            'Magasin',
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          actions: [
            CarCounterIcon(onPressed: () {}, iconColor: Colors.black), // temporaire
          ],
        ),
        body: NestedScrollView( // Utilisation de NestedScrollView pour gérer l'espace scrollable
          headerSliverBuilder: (_, innerBoxIsScrolled) {
            return [
              SliverAppBar(
                automaticallyImplyLeading: false,
                pinned: true,
                floating: true,
                backgroundColor: THelperFunctions.isDarkMode(context)
                    ? TColors.black
                    : TColors.white,
                expandedHeight: 441,
                flexibleSpace: Padding(
                  padding: EdgeInsets.all(TSizes.defaultSpace),
                  child: SingleChildScrollView( // Ajout de SingleChildScrollView pour permettre le défilement
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start, // Aligner à gauche
                      children: [
                        // Search bar alignée à gauche
                        SearchContainer(
                          text: 'Rechercher les produits',
                          showBorder: true, // Bordure visible
                          showBackground: true, // Fond visible
                          padding: EdgeInsets.symmetric(vertical: TSizes.sm), // Padding ajusté
                          controller: textEditingController,  // Utilisation du contrôleur dans l'état
                        ),
                        SizedBox(height: TSizes.spaceBtwItems),
    
                        // Section Heading pour "Marques"
                        SectionHeading(title: 'Marques', onPressed: () {}),
                        SizedBox(height: TSizes.spaceBtwItems / 1.5),
    
                        // Grid Layout pour les marques
                        GridView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, // Par exemple, 2 colonnes
                            mainAxisSpacing: TSizes.spaceBtwItems,
                            crossAxisSpacing: TSizes.spaceBtwItems,
                            childAspectRatio: 3, // Ajuster la taille des éléments
                          ),
                          itemCount: 4,  // Il y a 4 éléments (donc 4 images différentes)
                          itemBuilder: (_, index) {
                            return GestureDetector(
                              onTap: () {
                                // Naviguer vers l'écran correspondant à l'image
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (_) => categoryScreens[index],  // Utiliser l'écran en fonction de l'index
                                  ),
                                );
                              },
                              child: RoundedContainer(
                                padding: EdgeInsets.all(TSizes.sm),
                                showBorder: true,
                                backgroundColor: Colors.transparent,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start, // Aligner à gauche
                                  children: [
                                    // Icon Marques avec l'image différente pour chaque index
                                    Expanded(
                                      child: CircularImage(
                                        isNetworkImage: false,
                                        image: images[index],  // Utiliser l'image de la liste en fonction de l'index
                                        backgroundColor: Colors.transparent,
                                        overlayColor: THelperFunctions.isDarkMode(context)
                                            ? TColors.white
                                            : TColors.black,
                                      ),
                                    ),
                                    SizedBox(width: TSizes.spaceBtwItems / 2), // Espace entre l'icône et le texte
    
                                    // Column avec titre et texte
                                    Expanded( // Utiliser Expanded pour que la colonne prenne tout l'espace disponible
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment: CrossAxisAlignment.start, // Aligner à gauche
                                        children: [
                                          BrandTitleTextAvecVerifiedVerifiedIcon(
                                            title: 'ADCT',
                                            brandTextSize: TextSizes.large,
                                          ),
                                          Expanded(
                                            child: Text(
                                              '9 Products',
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context).textTheme.labelMedium,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ),
                ),
                bottom: TabBar(
                  isScrollable: true,
                  indicatorColor: TColors.primary,
                  unselectedLabelColor: TColors.darkGrey,
                  labelColor: THelperFunctions.isDarkMode(context) ? TColors.white : TColors.primary,
                  tabs: [
                    Tab(child: Text('Sport')),
                    Tab(child: Text('Meuble')), //Pour faire combiner un container specifique a chaque Tab, il fauter d'autres CategoryTab(),Specifiques
                    Tab(child: Text('Electronique')),
                    Tab(child: Text('Vetement')),
                    Tab(child: Text('Cosmetique')),
                  ],
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              CategoryTab(),
              CategoryTabM(),
              CategoryTabE(),
              CategoryTabV(),
              CategoryTab(),
            ],
          ),
        ),
      ),
    );
  }
}

