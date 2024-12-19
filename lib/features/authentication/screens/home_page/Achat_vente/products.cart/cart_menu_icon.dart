


import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/features/shop/screens/home/products_deteails/widgets/product_reviews/widgets/cart/cart.dart';

import '../../../../../../utils/constants/colors.dart';

class CarCounterIcon extends StatelessWidget {
  const CarCounterIcon({
    super.key,
    required this.onPressed, required this.iconColor,
  });
  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        IconButton(onPressed: () => Get.to(() => const CartScreen()), icon: Icon(Iconsax.shopping_bag, color: iconColor)),
        Positioned(
          right: 0,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: TColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text('2', style: Theme.of(context).textTheme.labelLarge!.apply(color: Colors.white, fontSizeFactor: 0.9))
            ),
    
          ),
          ),
      ],
    );
  }
}