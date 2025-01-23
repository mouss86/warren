
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warren/utils/helpers/helper_functions.dart';

import '../common/widgets/loaders/animation_loader.dart';
import 'constants/colors.dart';




class FullScreenLoader {











  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!, // Use Get.overlayContext for overlay dialogs
      barrierDismissible: false,
     builder: (_) => PopScope(
      canPop: false,
      child: Container(
        color: THelperFunctions.isDarkMode(Get.context!) ? TColors.dark : TColors.white,
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 250),  // Adjust the spacing as needed
            AnimationLoaderWidget(text: text, animation: animation)
          ],
        ),
      ),
      ),
    );
  }
  static stopLoading() {
    Navigator.of(Get.overlayContext!).pop(); // close the dialog using the navigato
  }
}