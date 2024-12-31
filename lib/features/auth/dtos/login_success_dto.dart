import 'package:onsunday_forum/features/auth/dtos/user_dto.dart';

class LoginSuccessDto {
  final String accessToken;
  final UserDto userDto;

  const LoginSuccessDto({
    required this.accessToken,
    required this.userDto,
  });

  factory LoginSuccessDto.fromJson(Map<String, dynamic> json) {
    return LoginSuccessDto(
      accessToken: json['accessToken'],
      userDto: UserDto.fromJson(json['getMeData']),
    );
  }
}
