import 'dart:developer';

import '../../result_type.dart';
import '../dtos/login_dto.dart';
import '../dtos/login_success_dto.dart';
import 'auth_api_client.dart';
import 'auth_local_data_source.dart';

class AuthRepository {
  final AuthApiClient authApiClient;
  final AuthLocalDataSource authLocalDataSource;

  AuthRepository({
    required this.authApiClient,
    required this.authLocalDataSource,
  });

  Future<Result<void>> login({
    required String username,
    required String password,
  }) async {
    try {
      LoginSuccessDto loginSuccessDto = await authApiClient.login(
        LoginDto(username: username, password: password, fcmToken: ""),
      );
      await authLocalDataSource.saveToken(loginSuccessDto.accessToken);
      await authLocalDataSource.saveUserProfile(loginSuccessDto.userDto);
    } catch (e) {
      log('$e');
      return Failure('$e');
    }
    return Success(null);
  }

  Future<Result<String?>> getToken() async {
    try {
      final token = await authLocalDataSource.getToken();
      if (token == null) {
        return Success(null);
      }
      return Success(token);
    } catch (e) {
      log('$e');
      return Failure('$e');
    }
  }

  Future<Result<void>> logout() async {
    try {
      await authLocalDataSource.deleteToken();
      return Success(null);
    } catch (e) {
      log('$e');
      return Failure('$e');
    }
  }
}
