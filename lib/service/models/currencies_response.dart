import 'package:freezed_annotation/freezed_annotation.dart';

part 'currencies_response.freezed.dart';
part 'currencies_response.g.dart';

typedef Currency = String;

@freezed
class CurrenciesResponse with _$CurrenciesResponse {
  factory CurrenciesResponse({
    required Map<Currency, dynamic> currencies,
  }) = _CurrenciesResponse;

  factory CurrenciesResponse.fromJson(Map<String, dynamic> json) =>
      _$CurrenciesResponseFromJson(json);
}
