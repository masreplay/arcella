import 'package:freezed_annotation/freezed_annotation.dart';

part 'convert_response.freezed.dart';
part 'convert_response.g.dart';

@freezed
class ConvertResponse with _$ConvertResponse {
  factory ConvertResponse({
    required String base,
    required double amount,
    required Map<String, dynamic> result,
  }) = _ConvertResponse;

  factory ConvertResponse.fromJson(Map<String, dynamic> json) =>
      _$ConvertResponseFromJson(json);
}
