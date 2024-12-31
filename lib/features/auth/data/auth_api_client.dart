import 'package:dio/dio.dart';
import 'package:onsunday_forum/features/auth/dtos/login_success_dto.dart';

import '../../../cores/configs/api_endpoints.dart';
import '../dtos/login_dto.dart';

class AuthApiClient {
  AuthApiClient(this.dio);

  final Dio dio;

  Future<LoginSuccessDto> login(LoginDto loginDto) async {
    try {
      final response = await dio.post(
        ApiEndpoints.login,
        data: loginDto.toJson(),
      );
      return LoginSuccessDto.fromJson(response.data);
    } on DioException catch (e) {
      if (e.response != null) {
        throw Exception(e.response!.data['title']);
      } else {
        throw Exception(e.message);
      }
    }
  }
}
