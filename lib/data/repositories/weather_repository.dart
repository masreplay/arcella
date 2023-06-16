import 'package:arcella/service/service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'weather_repository.g.dart';

@riverpod
WeatherRepository weatherRepository(WeatherRepositoryRef ref) =>
    WeatherRepository(ref.read(weatherClientProvider));

// in case we need to implement caching or local storage
class WeatherRepository {
  final WeatherClient _client;

  const WeatherRepository(this._client);

  Future<CurrenciesResponse> getCurrencies() => _client.getCurrencies();
  Future<ConvertResponse> convert(ConvertQueries queries) =>
      _client.convert(queries);
}
