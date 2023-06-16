import 'package:freezed_annotation/freezed_annotation.dart';

import 'currencies_response.dart';

part 'convert_queries.freezed.dart';
part 'convert_queries.g.dart';

@freezed
class ConvertQueries with _$ConvertQueries {
  factory ConvertQueries({
    required Currency from,
    required Currency to,
    required double amount,
  }) = _ConvertQueries;

  factory ConvertQueries.fromJson(Map<String, dynamic> json) =>
      _$ConvertQueriesFromJson(json);
}
