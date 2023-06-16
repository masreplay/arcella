import 'package:arcella/service/dio.dart';
import 'package:arcella/service/models/convert_queries.dart';
import 'package:arcella/service/models/convert_response.dart';
import 'package:arcella/service/models/currencies_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_client.g.dart';

@riverpod
WeatherClient weatherClient(WeatherClientRef ref) =>
    WeatherClient(ref.read(dioProvider));

@RestApi()
abstract class WeatherClient {
  factory WeatherClient(Dio dio, {String baseUrl}) = _WeatherClient;

  @GET("/currencies")
  Future<CurrenciesResponse> getCurrencies();

  @GET("/convert")
  Future<ConvertResponse> convert(
    @Queries() ConvertQueries queries,
  );
}
