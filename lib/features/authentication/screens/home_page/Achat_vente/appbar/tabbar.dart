


import 'package:flutter/material.dart';

import '../../../../../../utils/constants/colors.dart';
import '../../../../../../utils/device/device_utility.dart';
import '../../../../../../utils/helpers/helper_functions.dart';

class CustomTabBar extends StatelessWidget implements PreferredSizeWidget {
  // Si on veut ajouter un background color aux tabs, on doit les envelopper dans un widget Material.
  // Pour cela, on a besoin d'un widget [PreferredSize], c'est pourquoi on a créé une classe personnalisée [CustomTabBar].
  const CustomTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? TColors.black : TColors.white,
      child: TabBar(
        tabs: tabs,
        isScrollable: true,
        indicatorColor: TColors.primary,
        labelColor: dark ? TColors.white : TColors.primary,
        unselectedLabelColor: TColors.darkGrey,
      ),
    );
  }
  @override

Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
