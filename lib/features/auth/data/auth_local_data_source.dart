import 'package:onsunday_forum/features/auth/data/constants.dart';
import 'package:onsunday_forum/features/auth/dtos/user_dto.dart';

import '../../../services/storage.dart';

class AuthLocalDataSource {
  AuthLocalDataSource(this.storageService);

  final StorageService storageService;

  Future<void> saveToken(String token) async {
    await storageService.saveData(AuthDataConstants.accessToken, token);
  }

  Future<void> saveUserProfile(UserDto userProfile) async {
    await storageService.saveData(AuthDataConstants.userProfile, userProfile);
  }

  Future<String?> getToken() async {
    return storageService.getData(AuthDataConstants.accessToken);
  }

  Future<void> deleteToken() async {
    await storageService.removeData(AuthDataConstants.accessToken);
  }
}
