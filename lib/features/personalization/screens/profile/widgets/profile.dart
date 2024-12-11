
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/Images_body/circular_image.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/appbar/appbar.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/texts/section_heading.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import 'profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TAppBar(
        showBackArrow: true,
        title: Text(
          'Profile',
          style: Theme.of(context)
              .textTheme
              .headlineMedium!
              .apply(color: TColors.black),
        ),
      ),
      // body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              // Photo de profile
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    CircularImage(image: TImages.userIcon,width: 80, height: 80),
                    TextButton(onPressed: (){}, child: Text('Changer de photo de profile')),
                  ],
                ),
              ),
              // Details
              const SizedBox(height: TSizes.spaceBtwItems / 2),
              const Divider(),
              const SectionHeading(title: 'Informations de Profile',showActionButton: false),
              const SizedBox(height: TSizes.spaceBtwItems ),

              ProfileMenu(onPressed: () {  }, title: 'Nom', value: 'Warren'),
              ProfileMenu(onPressed: () {  }, title: 'User Name', value: 'Warren'),
                const SizedBox(height: TSizes.spaceBtwItems ),
                const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems ),
                  // information Personnelle
                  SectionHeading(title: 'Information Personnelle', showActionButton: false),
                   const SizedBox(height: TSizes.spaceBtwItems ),

                   ProfileMenu(onPressed: () {}, title: 'User ID', value: '010158', icon: Iconsax.copy),
                   ProfileMenu(onPressed: () {}, title: 'E-mail', value: 'Warren'),
                   ProfileMenu(onPressed: () {}, title: 'Numero de Telephone', value: '+2250708552030'),
                   ProfileMenu(onPressed: () {}, title: 'Genre', value: 'Male'),
                   ProfileMenu(onPressed: () {}, title: 'Date de Naissance', value: '07 aout, 1960', icon: Iconsax.copy),
                    const Divider(),
                     const SizedBox(height: TSizes.spaceBtwItems ),
                     Center(
                      child: TextButton(onPressed: () {}, 
                      child: const Text('Se desabonner', style: TextStyle(color: Colors.red),)
                      ),
                     ),

            ],
          ),
        ),
      ),
    );
  }
}


