

import 'package:flutter/material.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/appbar/appbar.dart';

import '../../../../../../../../utils/constants/sizes.dart';
import 'progress_indicateur_avis.dart';


class ProductReviews extends StatelessWidget {
  const ProductReviews({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // AppBar
      appBar: TAppBar(title: 
      Text('Notes & Avis', style: TextStyle(fontSize: 20, color: Colors.black)), showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(TSizes.defaultSpace),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Les notes et les avis sont vérifiés et proviennent de personnes utilisant le type meme appareil que vous '),
              SizedBox(height: TSizes.spaceBtwItems),

              // overall product rating
              RatingProgresIndicator (text: '5', value: 1.0),
             
              
             
            ],
          ),
          ),
      ),

    );
  }
}


