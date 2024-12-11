import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:warren/utils/constants/colors.dart';
import 'package:warren/utils/constants/image_strings.dart';
import 'package:warren/utils/constants/sizes.dart';
import 'package:warren/utils/constants/text_strings.dart';
import 'package:warren/utils/device/device_utility.dart';
import 'package:warren/utils/helpers/helper_functions.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _currentPage = 0; // Pour suivre la page actuelle

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page!.round(); // Met à jour la page actuelle
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bool dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: Stack(
        children: [
          // images scrollables
          PageView(
            controller: _pageController,
            children: [
              // Première page
              Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: THelperFunctions.screenHeight() * 0.6,
                      width: THelperFunctions.screenWidth() * 1,
                      image: const AssetImage(TImages.onBoardingImage1),
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      TTexts.OnBoardingTitle1,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      TTexts.OnBoardingSubTitle1,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              // Deuxième page
              Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: THelperFunctions.screenHeight() * 0.4,
                      width: THelperFunctions.screenWidth() * 1,
                      image: const AssetImage(TImages.onBoardingImage2),
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      TTexts.OnBoardingTitle2,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      TTexts.OnBoardingSubTitle2,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              // Troisième page
              Padding(
                padding: const EdgeInsets.all(TSizes.defaultSpace),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      height: THelperFunctions.screenHeight() * 0.3,
                      width: THelperFunctions.screenWidth() * 1,
                      image: const AssetImage(TImages.onBoardingImage3),
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      TTexts.OnBoardingTitle3,
                      style: Theme.of(context).textTheme.headlineMedium,
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(height: TSizes.spaceBtwItems),
                    Text(
                      TTexts.OnBoardingSubTitle3,
                      style: Theme.of(context).textTheme.bodyMedium,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
          // Bouton Skip
          Positioned(
            top: 40,
            right: 16,
            child: TextButton(
              onPressed: () {
                if (_currentPage == 2) {
                  // Navigue vers le LoginScreen si on est à la troisième image
                  Navigator.pushReplacementNamed(context, '/login');
                } else {
                  // Sinon, passe à la page suivante
                  _pageController.nextPage(
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeIn,
                  );
                }
              },
              child: const Text(
                'Skip',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
            ),
          ),
          // SmoothPageIndicator
          Positioned(
            bottom: TDeviceUtils.getBottomNavigationBarHeight() + 25,
            left: TSizes.defaultSpace,
            child: SmoothPageIndicator(
              controller: _pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                activeDotColor: dark ? TColors.light : TColors.dark,
                dotHeight: 6,
              ),
            ),
          ),
          // ElevatedButton positionné en bas à droite
          Positioned(
  bottom: 55,
  right: 16,
  child: ElevatedButton(
    onPressed: () {
      if (_currentPage == 2) { // Si on est à la dernière page
        // Naviguer vers l'écran de connexion
        Navigator.pushReplacementNamed(context, '/login');
      } else {
        // Si on n'est pas à la dernière page, passe à la page suivante
        _pageController.nextPage(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeIn,
        );
      }
    },
    child: const Icon(Icons.arrow_right),
  ),
),

        ],
      ),
    );
  }
}