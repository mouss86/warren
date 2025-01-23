

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warren/utils/full_screen_loader.dart';
import 'package:warren/utils/validators/loaders.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/network_manager.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
  final email = TextEditingController();// controller for email input
  final lastName = TextEditingController();// controller for las name input
  final username = TextEditingController();// controller for username input
  final password = TextEditingController();// controller for password input
  final firstName = TextEditingController();// controller for first name input
  final phoneNumber = TextEditingController(); // controller for phone number input
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  

  // Méthode pour l'inscription
  Future<void> signup() async {
    try {
      // Mise en place de l'indicateur de chargement pendant la requête
      FullScreenLoader.openLoadingDialog("Nous traitons vos informations...", TImages.animationI);

      final isConnected = await NetworkManager.instance.isConnected();
      if (isConnected) {
        FullScreenLoader.stopLoading();
        return;
      }
      // Form Validation
      if(!signupFormKey.currentState!.validate()){
        FullScreenLoader.stopLoading();
        return;
      }
      

    } catch (e) {
      // Si une erreur se produit, affichez un message générique
      Loaders.errorSnackBar(title: "oh lalala!", message: e.toString());
      
    } finally {
      // Assurez-vous de cacher le loader à la fin
      FullScreenLoader.stopLoading();
    }
  }
}
