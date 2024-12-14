import 'package:get_storage/get_storage.dart';

class MyLocalStorage {
  static final MyLocalStorage _instance = MyLocalStorage._internal();

  factory MyLocalStorage() {
    return _instance;
  }
  MyLocalStorage._internal();
  final _storage = GetStorage();

  Future<void> saveData<A>(String key, A value) async {
    await _storage.write(key, value);
  }

  A? readData<A>(String key) {
    return _storage.read<A>(key);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }

  Future<void> clearAll() async {
    await _storage.erase();
  }
}
