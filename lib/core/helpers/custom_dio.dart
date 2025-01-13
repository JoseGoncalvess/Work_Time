import 'package:dio/dio.dart';

class CustomDio {
  static CustomDio? _customDio;
  static Dio? _dio;

  CustomDio._();

  final BaseOptions options = BaseOptions(
      baseUrl: 'http://localhost:8080/api/v1', responseType: ResponseType.json);

  static CustomDio get instance => _customDio ??= CustomDio._();
  Dio get dio {
    return _dio ?? Dio(options);
  }
}
