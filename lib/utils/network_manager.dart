import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';

import 'validators/loaders.dart';

class NetworkManager extends GetxController {
  static NetworkManager get instance => Get.find();

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  final Rx<ConnectivityResult> _connectionStatus = ConnectivityResult.none.obs;

  ConnectivityResult get connectionStatus => _connectionStatus.value;

  @override
  void onInit() {
    super.onInit();
    // Correction de l'abonnement
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen((ConnectivityResult result) {
      updateConnectionStatus(result);  // On écoute un seul résultat, pas une liste
    } as void Function(List<ConnectivityResult> event)?) as StreamSubscription<ConnectivityResult>;
    _checkInitialConnectivity();
  }

  Future<void> updateConnectionStatus(ConnectivityResult result) async {
    _connectionStatus.value = result;
    if (_connectionStatus.value == ConnectivityResult.none) {
      Loaders.warningSnackBar(title: "No internet connection");
    }
  }

  Future<void> _checkInitialConnectivity() async {
    final result = await _connectivity.checkConnectivity();
    updateConnectionStatus(result as ConnectivityResult);
  }

  Future<bool> isConnected() async {
    try {
      final result = await _connectivity.checkConnectivity();
      return result != ConnectivityResult.none;
    } catch (e) {
      return false;
    }
  }

  @override
  void onClose() {
    _connectivitySubscription.cancel();
    super.onClose();
  }
}
