
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:warren/features/authentication/screens/home_page/Achat_vente/appbar/appbar.dart';
import 'package:warren/features/personalization/screens/adress/profile/settings/widgets/single_address.dart';

import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/sizes.dart';
import 'add_new_address.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: TColors.primary,
        onPressed: () => Get.to (() => const AddNewAddressScreen()),
        child: Icon(Iconsax.add, color: TColors.white,),
        ),
        appBar: TAppBar(
          showBackArrow: true,
          title:  Text('Address', style: Theme.of(context).textTheme.headlineSmall),
        ),
        body: const SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(TSizes.defaultSpace),
            child: Column(
              children: [
                SingleAddress(selectedAddress: false),
                 SingleAddress(selectedAddress: true),
              ],
            ),
            ),
        ),
    );
  }
}