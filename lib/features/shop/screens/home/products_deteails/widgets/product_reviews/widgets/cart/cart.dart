
import 'package:flutter/material.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/appbar/appbar.dart';
import 'package:warren/features/shop/screens/home/products_deteails/widgets/product_price_text.dart';
import 'package:warren/features/shop/screens/home/products_deteails/widgets/product_reviews/widgets/cart/add_remove_button.dart';
import 'package:warren/utils/constants/sizes.dart';

import 'cart_item.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: TAppBar(showBackArrow: true,title: Text('Panier', style: Theme.of(context).textTheme.headlineSmall)),
      body: Padding(
        padding: const EdgeInsets.all(TSizes.defaultSpace),
        child:  ListView.separated(
          shrinkWrap: true,
        separatorBuilder: (_, __) => const SizedBox(height: TSizes.spaceBtwSections) , 
        itemCount: 10,
        itemBuilder: (_, index) => Column(
          children: [
            CartItemT(),
            SizedBox(height: TSizes.spaceBtwItems),
            Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                 
                  children: [
                    SizedBox(width: 70),
                     // add and Remove Buttons
            ProductQuantityWithAddRemove(),
                  ],
                ),
               
            ProductPriceText(Price: "30000 FR", title: "prix")
              ],
            ),
          ],
        ), 
        ),
        ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(onPressed: () {}, child: Text("Checkout \ 30000 FR")),
      ),
    );
  }
}


