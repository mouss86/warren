


// ignore: camel_case_types
import 'package:flutter/material.dart';

import '../../../../../utils/constants/text_strings.dart';
import 'appbar/appbar.dart';
import 'products.cart/cart_menu_icon.dart';

// ignore: camel_case_types
class Achat_TAppBar extends StatelessWidget {
  const Achat_TAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium?.apply(
                  color: Colors.white
                ),
          ),
          Text(
            TTexts.homeAppbarSubTitle,
            style: Theme.of(context).textTheme.headlineSmall?.apply(
                  color: Colors.white,
                ),
          ),
        ],
      ),
      actions: [
        CarCounterIcon(
          onPressed: () {},
          iconColor: Colors.white
        ),
      ], 
    );
  }
}