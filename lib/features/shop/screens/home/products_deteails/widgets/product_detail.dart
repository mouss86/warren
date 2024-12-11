import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:readmore/readmore.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/texts/section_heading.dart';
import 'package:warren/features/shop/screens/home/products_deteails/widgets/product_attributes.dart';
import 'package:warren/features/shop/screens/home/products_deteails/widgets/product_meta_data.dart';
import 'package:warren/features/shop/screens/home/products_deteails/widgets/product_reviews/widgets/product_reviews.dart';
import 'package:warren/utils/constants/sizes.dart';
import 'package:warren/utils/helpers/helper_functions.dart';

import 'bottom_add_to_cart_widget.dart';
import 'product-detail_image_slider.dart';
import 'rating_share_widget.dart';

class ProductDetail extends StatelessWidget {
  const ProductDetail({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      bottomNavigationBar:  BottomAddToCart(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Image produit
            ProductImageSlider(),

            // product Details
            Padding(
              padding: EdgeInsets.only(right: TSizes.defaultSpace, left: TSizes.defaultSpace,bottom: TSizes.defaultSpace),
              child: Column(
                children: [
                  // rating & share button
                  RatingAndShare(),
                  // Price, Title, Stack, & Brand
                  ProductMetaData(),

                  // Attributes
                  ProductAttributes(),
                  SizedBox(height: TSizes.spaceBtwSections,),
                  
                  // Checkout Button
                  SizedBox(width: double.infinity,child: ElevatedButton(onPressed: () {}, child: Text('Checkout'))),
                   SizedBox(height: TSizes.spaceBtwItems),
                  // Description
                  SectionHeading(title: 'Description', showActionButton: false),
                  SizedBox(height: TSizes.spaceBtwItems),
                  ReadMoreText(
                    'ici la description de ce produit. On pourrait le decrire ici',
                    trimLines: 2,
                    trimCollapsedText: 'voir plus',
                    trimExpandedText: 'Moins',
                    moreStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle: TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  // Review
                  Divider(),
                  SizedBox(height: TSizes.spaceBtwItems),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
              
                      SectionHeading(title: 'Reviews(123)', showActionButton: false),
                  IconButton(onPressed: () => Get.to(()=> const ProductReviews()), icon: const Icon(Iconsax.arrow_right_3, size: 19,)),
                    ],
                  ),
                  SizedBox(height: TSizes.spaceBtwSections),

                ],
              ),
              ),
          ],
        ),
      ),
    );
  }
}



