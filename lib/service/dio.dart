import 'package:arcella/service/clients/client.dart';
import 'package:awesome_dio_interceptor/awesome_dio_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio.g.dart';

@riverpod
Dio dio(DioRef ref) {
  final dio = Dio();

  dio.options.baseUrl = Client.baseUrl;

  dio.interceptors.addAll(
    [
      AwesomeDioInterceptor(),
      ApiKeyInterceptor(),
    ],
  );

  return dio;
}

class ApiKeyInterceptor extends Interceptor {
  ApiKeyInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters['api_key'] = Client.apiKey;

    return super.onRequest(options, handler);
  }
}
