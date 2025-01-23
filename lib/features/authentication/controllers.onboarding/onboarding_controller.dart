import 'package:get/get.dart';
import 'package:flutter/cupertino.dart';
import 'package:get_storage/get_storage.dart';

import '../screens/login/login.dart';

class OnboardingController extends GetxController {
  static OnboardingController get instance => Get.find();

  // Variable pour suivre l'index actuel
  final PageController pageController = PageController(); // Utilisation d'une lettre minuscule
  Rx<int> currentPageIndex = 0.obs;

  // Met à jour l'index actuel lors du défilement de la page
  void updatePageIndicator(int index) {
    currentPageIndex.value = index; // Met à jour l'index observable
  }

  // Accède à la page spécifique sélectionnée par le dot
  void dotNavigationClick(int index) {
    currentPageIndex.value = index;
    // Utilisation d'animateToPage pour une animation fluide
    pageController.animateToPage(index, 
      duration: Duration(milliseconds: 300), 
      curve: Curves.ease);
  }

  // Passe à la page suivante
  void nextPage() {
    if (currentPageIndex.value == 2) {  
      final storage = GetStorage();
      storage.write("IsFirstTime", false); // Si c'est la dernière page (index 2)
      Get.offAll(() => const LoginScreen()); // Redirige vers la page de connexion en supprimant toutes les autres pages
    } else {
      // Si on n'est pas à la dernière page, on passe à la page suivante
      int page = currentPageIndex.value + 1;
      pageController.animateToPage(page, 
        duration: Duration(milliseconds: 300), 
        curve: Curves.ease); // Animation pour passer à la page suivante
    }
  }

  // Passer à la dernière page (Skip)
  void skipPage() {
    currentPageIndex.value = 2; // Met à jour l'index à la dernière page
    pageController.jumpToPage(2); // Navigue instantanément vers la dernière page
  }
}
