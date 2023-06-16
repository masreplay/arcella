// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'convert_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConvertResponse _$ConvertResponseFromJson(Map<String, dynamic> json) {
  return _ConvertResponse.fromJson(json);
}

/// @nodoc
mixin _$ConvertResponse {
  String get base => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;
  Map<String, dynamic> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConvertResponseCopyWith<ConvertResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertResponseCopyWith<$Res> {
  factory $ConvertResponseCopyWith(
          ConvertResponse value, $Res Function(ConvertResponse) then) =
      _$ConvertResponseCopyWithImpl<$Res, ConvertResponse>;
  @useResult
  $Res call({String base, double amount, Map<String, dynamic> result});
}

/// @nodoc
class _$ConvertResponseCopyWithImpl<$Res, $Val extends ConvertResponse>
    implements $ConvertResponseCopyWith<$Res> {
  _$ConvertResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? amount = null,
    Object? result = null,
  }) {
    return _then(_value.copyWith(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      result: null == result
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConvertResponseCopyWith<$Res>
    implements $ConvertResponseCopyWith<$Res> {
  factory _$$_ConvertResponseCopyWith(
          _$_ConvertResponse value, $Res Function(_$_ConvertResponse) then) =
      __$$_ConvertResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String base, double amount, Map<String, dynamic> result});
}

/// @nodoc
class __$$_ConvertResponseCopyWithImpl<$Res>
    extends _$ConvertResponseCopyWithImpl<$Res, _$_ConvertResponse>
    implements _$$_ConvertResponseCopyWith<$Res> {
  __$$_ConvertResponseCopyWithImpl(
      _$_ConvertResponse _value, $Res Function(_$_ConvertResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? base = null,
    Object? amount = null,
    Object? result = null,
  }) {
    return _then(_$_ConvertResponse(
      base: null == base
          ? _value.base
          : base // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
      result: null == result
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConvertResponse implements _ConvertResponse {
  _$_ConvertResponse(
      {required this.base,
      required this.amount,
      required final Map<String, dynamic> result})
      : _result = result;

  factory _$_ConvertResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ConvertResponseFromJson(json);

  @override
  final String base;
  @override
  final double amount;
  final Map<String, dynamic> _result;
  @override
  Map<String, dynamic> get result {
    if (_result is EqualUnmodifiableMapView) return _result;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_result);
  }

  @override
  String toString() {
    return 'ConvertResponse(base: $base, amount: $amount, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConvertResponse &&
            (identical(other.base, base) || other.base == base) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, base, amount, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConvertResponseCopyWith<_$_ConvertResponse> get copyWith =>
      __$$_ConvertResponseCopyWithImpl<_$_ConvertResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConvertResponseToJson(
      this,
    );
  }
}

abstract class _ConvertResponse implements ConvertResponse {
  factory _ConvertResponse(
      {required final String base,
      required final double amount,
      required final Map<String, dynamic> result}) = _$_ConvertResponse;

  factory _ConvertResponse.fromJson(Map<String, dynamic> json) =
      _$_ConvertResponse.fromJson;

  @override
  String get base;
  @override
  double get amount;
  @override
  Map<String, dynamic> get result;
  @override
  @JsonKey(ignore: true)
  _$$_ConvertResponseCopyWith<_$_ConvertResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
