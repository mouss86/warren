

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../../../utils/constants/colors.dart';
import '../../../../../../../utils/constants/image_strings.dart';
import '../../../../../../authentication/screens/home_page/Achat_vente/Images_body/circular_image.dart';
import '../../../../profile/widgets/profile.dart';

class UserProfileTitle extends StatelessWidget {
  const UserProfileTitle({
    super.key, required Future? Function() onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircularImage(
        image: TImages.userIcon,
        width: 50,
        height: 50,
        padding: 0,
      ), title: Text('UserName', style: Theme.of(context).textTheme.headlineSmall!.apply(color: TColors.light)),
      subtitle: Text('Contact@yahoo.fr', style: Theme.of(context).textTheme.bodyMedium!.apply(color: TColors.light)),
      trailing: IconButton(onPressed: () => Get.to(() => ProfileScreen()), icon: Icon(Iconsax.edit, color: TColors.light,)),
    );
  }
}
