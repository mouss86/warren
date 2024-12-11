

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/common/widgets/success_screen/layouts/grid_layout.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/Images_body/circular_icon.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/appbar/appbar.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/products/cards/product_card_vertical.dart';

import '../../../../../../../utils/constants/sizes.dart';
import '../../achat.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(
        title: Text('Liste de souhait', style: Theme.of(context).textTheme.headlineMedium),
        actions: [
        CircularIcon(icon: Iconsax.add, onPressed: () => Get.to (const AchatScreen())),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            children: [
              GridLayout(itemCount: 8, itemBuilder: (_, index) => const ProductCardVertical())
            ],
          ),
          ),
      ),
    );
  }
}