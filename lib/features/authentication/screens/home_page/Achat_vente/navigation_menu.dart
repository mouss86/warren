


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/achat.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/shop_vendre/store/wishlist_like.dart';
import 'package:warren/utils/helpers/helper_functions.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../personalization/screens/adress/profile/settings/settings.dart';
import 'shop_vendre/store/store.dart';

class NavigationMenu extends StatelessWidget {
  const NavigationMenu({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(NavigationController());
    final darkMode = THelperFunctions.isDarkMode(context);

    return Scaffold(
      bottomNavigationBar:  Obx(
        ()=> NavigationBar(
          height: 80,
          elevation: 0,
          selectedIndex: controller.selectedIndex.value,
          onDestinationSelected: (index) => controller.selectedIndex.value = index,
          backgroundColor: darkMode ? TColors.black : Colors.white,
          indicatorColor: darkMode ? TColors.white.withOpacity(0.1) : TColors.black.withOpacity(0.1),
        
          // Modifier la bottomNavigationBar plutard
        
        
          destinations: const [
            NavigationDestination(icon: Icon(Iconsax.home), label: 'Acheter'),
            NavigationDestination(icon: Icon(Iconsax.shop), label: 'Vendre'),
            NavigationDestination(icon: Icon(Iconsax.heart), label: 'Like'),
            NavigationDestination(icon: Icon(Iconsax.user), label: 'Profile'),
        
          ],
          ),
      ),
        body: Obx(() => controller.screens[controller.selectedIndex.value]),
    );
  }
}

class NavigationController extends GetxController {
  final Rx <int> selectedIndex = 0.obs;

  final screens = [const AchatScreen(), const StoreScreen(), FavouriteScreen(), SettingsScreen ()];
}
