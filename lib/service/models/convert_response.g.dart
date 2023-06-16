// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'convert_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ConvertResponse _$$_ConvertResponseFromJson(Map<String, dynamic> json) =>
    _$_ConvertResponse(
      base: json['base'] as String,
      amount: (json['amount'] as num).toDouble(),
      result: json['result'] as Map<String, dynamic>,
    );

Map<String, dynamic> _$$_ConvertResponseToJson(_$_ConvertResponse instance) =>
    <String, dynamic>{
      'base': instance.base,
      'amount': instance.amount,
      'result': instance.result,
    };
