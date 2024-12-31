class LoginDto {
  final String username;
  final String password;
  final String fcmToken;

  const LoginDto({
    required this.username,
    required this.password,
    required this.fcmToken,
  });

  Map<String, dynamic> toJson() => {
        'userName': username,
        'password': password,
        'fcmToken': password,
      };
}
