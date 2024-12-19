
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/utils/helpers/helper_functions.dart';

import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/sizes.dart';
import '../../../../../../authentication/screens/home_page/Achat_vente/Images_body/rounded_container.dart';

class SingleAddress extends StatelessWidget {
  const SingleAddress({super.key, required this.selectedAddress});

  final bool selectedAddress;


  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return RoundedContainer(
      showBorder: true,
      padding: const EdgeInsets.all(TSizes.md),
     width: double.infinity,
     backgroundColor: selectedAddress ? TColors.primary.withOpacity(0.5) :Colors.transparent,
     borderColor: selectedAddress 
     ? Colors.transparent
     : dark 
        ? TColors.darkerGrey
        : TColors.grey,

    margin:  const EdgeInsets.only(bottom: TSizes.spaceBtwItems),
    child:  Stack(
      children: [
        Positioned(
          right: 5,
          top: 0,
          child: Icon(
            selectedAddress ? Iconsax.tick_circle : null ,
            color: selectedAddress
            ? dark 
              ? TColors.light
              : TColors.dark
              : null,
            ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start, // les texts commencent tous de la gauche vers la droite
          children: [
            Text(
              'Nom Prenom',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: TSizes.sm / 2),
            const Text('(+225) 1425698750', maxLines: 1,overflow: TextOverflow.ellipsis),
            const SizedBox(height: TSizes.sm / 2),
            Text(
              'Boulevard latrille, Abidjan, CI',
             softWrap: true,
            )
          ],
        ),
      ],
    ),
  );
  }
}