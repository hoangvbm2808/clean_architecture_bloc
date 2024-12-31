import 'package:get_storage/get_storage.dart';

class StorageService {
  late GetStorage _storage;

  Future<void> init() async {
    await GetStorage.init();
    _storage = GetStorage();
  }

  dynamic getData(String key) {
    return _storage.read(key);
  }

  Future<void> saveData(String key, dynamic value) async {
    await _storage.write(key, value);
  }

  Future<void> removeData(String key) async {
    await _storage.remove(key);
  }
}
