import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
// ignore: unused_import
import 'package:google_fonts/google_fonts.dart';
import 'package:warren/app.dart';
import 'package:warren/firebase_options.dart';

import 'data/repositories.authentication/authentication_repository.dart';



/// ---- MAIN ENTRY POINTS OF THE APP -----
Future<void> main() async {

  //  WIDGETS BINDING
  final WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  // GetX LOCAL STORAGE
  await GetStorage.init();

  //  AWAIT NATIVE SPLASH
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // tODO: INITIALIZE FIREBASE
  
  // INITIALIZE AUTHENTICATION
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform).then((FirebaseApp value) => Get.put(AuthenticationRepository()),
);
  runApp(const MyApp());
}

