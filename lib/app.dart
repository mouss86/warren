import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:warren/features/authentication/screens/login/login.dart';
import 'package:warren/features/authentication/screens/onboarding/onboarding.dart';
import 'package:warren/utils/theme/theme.dart';


class MyApp extends StatelessWidget {
  const MyApp({super.key});

// USE THIS CLASS TO SETUP THEMES, INITIAL BINDINGS, ANY ANIMATIONS AND MUCH 
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: TMyAppTheme.lightTheme,
      darkTheme: TMyAppTheme.darkTheme, 
     

      // page d'accueil
      home: OnboardingScreen(),

      // Définir les routes dans `getPages`
      getPages: [
        // Route pour l'écran d'Onboarding
        GetPage(name: '/', page: () => OnboardingScreen()),

        // Route pour l'écran de Login
        GetPage(name: '/login', page: () => LoginScreen()), // Définir la route '/login' pour LoginScreen
      ],
     

      
    );
  }
}