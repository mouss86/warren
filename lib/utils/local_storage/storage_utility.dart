import 'package:get_storage/get_storage.dart';

class TLocalStorage {
  static final TLocalStorage _instance = TLocalStorage._internal();

  factory TLocalStorage() {
    return _instance;
  }

  TLocalStorage._internal();

  final _storage = GetStorage();

  // METHODE GENERIC POUR GARDER DES DONNÉES

  Future<void>  saveData<T>(String key, T value) async {
    await _storage.write(key, value);
  }
  // Methode Generic pour lire des données

  T? readData<T>(String key) {
    return _storage.read<T>(key);
  }

  // Methode Generic pour retirer des données
  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }
  // Clear all data in storage

  Future<void> ClearAll() async {
    await _storage.erase();
  }
}


