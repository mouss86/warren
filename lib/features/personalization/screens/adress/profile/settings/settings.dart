import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/texts/section_heading.dart';
import 'package:warren/features/personalization/screens/adress/profile/settings/list_titles/settings_menu_tile.dart';

import '../../../../../../common/widgets/success_screen/custom_shapes/containers/primary_header_container.dart';
import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/constants/sizes.dart';
import '../../../../../authentication/screens/home_page/Achat_vente/appbar/appbar.dart';
import '../../../profile/widgets/profile.dart';
import 'list_titles/user_profile_title.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // header
           PrimaryHeaderContainer(
  child: Column(
    children: [
      TAppBar(
        title: Text(
          'Compte',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: TColors.light),
        ),
      ),
      // Profile de l'user card
      UserProfileTitle(onPressed: () => Get.to(() => ProfileScreen())),
      const SizedBox(height: TSizes.spaceBtwSections),
    ],
  ),
),

            // body
            Padding(
              padding: EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  // Account Setting
                  SectionHeading(title: 'Account Settings', showActionButton: false,),
                  SizedBox(height: TSizes.spaceBtwItems),
                  SettingsMenuTile(
                    icon: Iconsax.safe_home,
                    title: 'Mon Adresse', 
                    subTitle: 'Entrer votre adresse de livraison',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.shopping_cart,
                    title: 'Mon Panier', 
                    subTitle: 'Ajouter et enlever vos produits',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bag_tick,
                    title: 'Mes Commandes', 
                    subTitle: 'En cours and Commandes Completes',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.bank,
                    title: 'Numero de compte Bancaire', 
                    subTitle: 'Entrer votre numero de compte Bancaire',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.discount_shape,
                    title: 'Mes Coupons', 
                    subTitle: 'List de tous les coupons de reduction',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.notification,
                    title: 'Notifications', 
                    subTitle: 'Configurer tout genre de message de notification',
                    onTap: () {},
                  ),
                  SettingsMenuTile(
                    icon: Iconsax.security_card,
                    title: 'Conidentialité du compte', 
                    subTitle: 'Gerer l utilisation des données et les comptes connectés',
                    onTap: () {},
                  ),

                  // App settings
                  SizedBox(height: TSizes.spaceBtwSections),
                  SectionHeading(title: 'Parametres de l application'),
                  SizedBox(height: TSizes.spaceBtwItems),
                   SettingsMenuTile(
                    icon: Iconsax.document_upload,
                    title: 'Charger les données', 
                    subTitle: 'Charger les données de votre cloud Firebase',
                    onTap: () {},
                  ),
                   SettingsMenuTile(
                    icon: Iconsax.location,
                    title: 'Geolocalisation', 
                    subTitle: 'Recommandation en fonction de votre localisation',
                    trailing: Switch(value: true, onChanged: (Value) {}),
                    onTap: () {},
                  ),
                   SettingsMenuTile(
                    icon: Iconsax.security_user,
                    title: 'Safe Mode', 
                    subTitle: 'Le resultat de la recherche est sure pour tous les ages',
                    trailing: Switch(value: false, onChanged: (Value) {}),
                    onTap: () {},
                  ),
                   SettingsMenuTile(
                    icon: Iconsax.image,
                    title: 'HD image de qualité', 
                    subTitle: 'Definir la qualité de l image a voir',
                    trailing: Switch(value: false, onChanged: (Value) {}),
                    onTap: () {},
                  ),
                  SizedBox(height: TSizes.spaceBtwItems),
                  SizedBox(
                    width: double.infinity,
                    child: OutlinedButton(onPressed: (){}, child: const Text('Logout')),
                  ),
                   SizedBox(height: TSizes.spaceBtwItems * 2.5),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

