// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "app": {
    "title": "AIS Maintenance"
  },
  "common": {
    "language": "Language",
    "english": "English",
    "vietnamese": "Vietnamese",
    "theme": "Theme",
    "dark_mode": "Dark Mode",
    "light_mode": "Light Mode",
    "system_mode": "System Default"
  },
  "settings": {
    "title": "Settings",
    "language_setting": "Select Language",
    "theme_setting": "Select Theme"
  },
  "login": {
    "title": "Login",
    "username": "Username",
    "password": "Password",
    "login_button": "Login",
    "retry_button": "Retry",
    "forgot_password": "Forgot Password?",
    "signup": "Don't have an account? Sign up",
    "please_type_username": "Please enter username",
    "please_type_password": "Please enter password"
  },
  "home": {
    "title": "Home",
    "welcome_message": "Welcome to AIS Maintenance",
    "logout": "Logout",
    "setting": "Setting",
    "logout_fail": "Logout Failure"
  },
  "error": {
    "network_error": "Network error, please try again",
    "invalid_credentials": "Invalid username or password",
    "required_field": "This field is required"
  }
};
static const Map<String,dynamic> vi = {
  "app": {
    "title": "AIS Maintenance"
  },
  "common": {
    "language": "Ngôn ngữ",
    "english": "Tiếng Anh",
    "vietnamese": "Tiếng Việt",
    "theme": "Chủ đề",
    "dark_mode": "Chế độ tối",
    "light_mode": "Chế độ sáng",
    "system_mode": "Mặc định hệ thống"
  },
  "settings": {
    "title": "Cài đặt",
    "language_setting": "Chọn ngôn ngữ",
    "theme_setting": "Chọn chủ đề"
  },
  "login": {
    "title": "Đăng nhập",
    "username": "Tên đăng nhập",
    "password": "Mật khẩu",
    "login_button": "Đăng nhập",
    "retry_button": "Thử lại",
    "forgot_password": "Quên mật khẩu?",
    "signup": "Chưa có tài khoản? Đăng ký",
    "please_type_username": "Vui lòng nhập tên tài khoản",
    "please_type_password": "Vui lòng nhập mật khẩu"
  },
  "home": {
    "title": "Trang chủ",
    "welcome_message": "Chào mừng đến với Bảo trì AIS",
    "logout": "Đăng xuất",
    "setting": "Cài đặt",
    "logout_fail": "Đăng xuất thất bại"
  },
  "error": {
    "network_error": "Lỗi mạng, vui lòng thử lại",
    "invalid_credentials": "Tên đăng nhập hoặc mật khẩu không hợp lệ",
    "required_field": "Trường này là bắt buộc"
  }
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "vi": vi};
}
