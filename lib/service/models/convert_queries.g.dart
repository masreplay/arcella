// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'convert_queries.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConvertQueries _$$_ConvertQueriesFromJson(Map<String, dynamic> json) =>
    _$_ConvertQueries(
      from: json['from'] as String,
      to: json['to'] as String,
      amount: (json['amount'] as num).toDouble(),
    );

Map<String, dynamic> _$$_ConvertQueriesToJson(_$_ConvertQueries instance) =>
    <String, dynamic>{
      'from': instance.from,
      'to': instance.to,
      'amount': instance.amount,
    };
