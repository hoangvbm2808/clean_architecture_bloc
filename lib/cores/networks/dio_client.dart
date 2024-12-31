import 'package:dio/dio.dart';

final dio = Dio(
  BaseOptions(
    baseUrl: 'http://api-dev.asiaservice.vn/api',
  ),
);
