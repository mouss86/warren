
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/appbar/appbar.dart';
import 'package:warren/utils/constants/sizes.dart';

class AddNewAddressScreen extends StatelessWidget {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const TAppBar( showBackArrow: true, title: Text('Add new Adress')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              TextFormField( decoration: const InputDecoration(prefixIcon: Icon(Iconsax.user), labelText: 'Nom')),
              const   SizedBox(height: TSizes.spaceBtwInputFields),
              TextFormField( decoration: const InputDecoration(prefixIcon: Icon(Iconsax.mobile), labelText: 'Phone Number')),
              const   SizedBox(height: TSizes.spaceBtwInputFields),
              Row(
                children: [
                  Expanded(child: TextFormField( decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building_31), labelText: 'Rue'))),
                  const   SizedBox(width: TSizes.spaceBtwInputFields),
                  Expanded(child: TextFormField( decoration: const InputDecoration(prefixIcon: Icon(Iconsax.code), labelText: 'Code Postal'))),
                ],
              ),
              const   SizedBox(height: TSizes.spaceBtwInputFields),
              Row(
                children: [
                  Expanded(child: TextFormField( decoration: const InputDecoration(prefixIcon: Icon(Iconsax.building), labelText: 'Ville'))),
                  const   SizedBox(width: TSizes.spaceBtwInputFields),
                  Expanded(child: TextFormField( decoration: const InputDecoration(prefixIcon: Icon(Iconsax.activity), labelText: 'Region'))),
                ],
              ),
              const   SizedBox(height: TSizes.spaceBtwInputFields),
              TextFormField( decoration: const InputDecoration(prefixIcon: Icon(Iconsax.global), labelText: 'Pays')),
                const   SizedBox(height: TSizes.defaultSpace),
                SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: Text('Sauvegarder')),),
            ],
          ),
          ),
      ),
    );
  }
}