import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:warren/features/authentication/screens/login/login.dart';
import 'package:warren/features/authentication/screens/onboarding/onboarding.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  // Variables
  final deviceStorage = GetStorage();

  // called from main.dart on app launch

  @override
  void onReady(){
    FlutterNativeSplash.remove();
    screenRedirect();
  }


    screenRedirect() async {
      // Local Storage
      deviceStorage.writeIfNull("IsFirstTime", true);
      deviceStorage.read("IsFirstTime") != true 
      ? Get.offAll(() => const LoginScreen()) 
      : Get.offAll(const OnboardingScreen());

    }


 // -------- Email & Password signIn ----------------

 // EmailAuthentication - signIn
 // EmailAuthentication - Register
 // ReAuthenticate - ReAuthenticate User
 // EmailVerification- Mail verification
 // EmailVerification - Forget Password

 //------- Federated identity & social sign-in
 //  GoogleAuthentication  - Google
 // FacebookAuthentication  - Facebbok

 // -------- /end federated identity & social sign-in

 // LogoutUser - Valid for any authentication.
 // Delete User- Remove user Auth and Firestore Account


}


