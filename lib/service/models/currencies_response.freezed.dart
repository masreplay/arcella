// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currencies_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CurrenciesResponse _$CurrenciesResponseFromJson(Map<String, dynamic> json) {
  return _CurrenciesResponse.fromJson(json);
}

/// @nodoc
mixin _$CurrenciesResponse {
  Map<Currency, dynamic> get currencies => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CurrenciesResponseCopyWith<CurrenciesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrenciesResponseCopyWith<$Res> {
  factory $CurrenciesResponseCopyWith(
          CurrenciesResponse value, $Res Function(CurrenciesResponse) then) =
      _$CurrenciesResponseCopyWithImpl<$Res, CurrenciesResponse>;
  @useResult
  $Res call({Map<Currency, dynamic> currencies});
}

/// @nodoc
class _$CurrenciesResponseCopyWithImpl<$Res, $Val extends CurrenciesResponse>
    implements $CurrenciesResponseCopyWith<$Res> {
  _$CurrenciesResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_value.copyWith(
      currencies: null == currencies
          ? _value.currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as Map<Currency, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CurrenciesResponseCopyWith<$Res>
    implements $CurrenciesResponseCopyWith<$Res> {
  factory _$$_CurrenciesResponseCopyWith(_$_CurrenciesResponse value,
          $Res Function(_$_CurrenciesResponse) then) =
      __$$_CurrenciesResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<Currency, dynamic> currencies});
}

/// @nodoc
class __$$_CurrenciesResponseCopyWithImpl<$Res>
    extends _$CurrenciesResponseCopyWithImpl<$Res, _$_CurrenciesResponse>
    implements _$$_CurrenciesResponseCopyWith<$Res> {
  __$$_CurrenciesResponseCopyWithImpl(
      _$_CurrenciesResponse _value, $Res Function(_$_CurrenciesResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currencies = null,
  }) {
    return _then(_$_CurrenciesResponse(
      currencies: null == currencies
          ? _value._currencies
          : currencies // ignore: cast_nullable_to_non_nullable
              as Map<Currency, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CurrenciesResponse implements _CurrenciesResponse {
  _$_CurrenciesResponse({required final Map<Currency, dynamic> currencies})
      : _currencies = currencies;

  factory _$_CurrenciesResponse.fromJson(Map<String, dynamic> json) =>
      _$$_CurrenciesResponseFromJson(json);

  final Map<Currency, dynamic> _currencies;
  @override
  Map<Currency, dynamic> get currencies {
    if (_currencies is EqualUnmodifiableMapView) return _currencies;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_currencies);
  }

  @override
  String toString() {
    return 'CurrenciesResponse(currencies: $currencies)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrenciesResponse &&
            const DeepCollectionEquality()
                .equals(other._currencies, _currencies));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_currencies));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CurrenciesResponseCopyWith<_$_CurrenciesResponse> get copyWith =>
      __$$_CurrenciesResponseCopyWithImpl<_$_CurrenciesResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CurrenciesResponseToJson(
      this,
    );
  }
}

abstract class _CurrenciesResponse implements CurrenciesResponse {
  factory _CurrenciesResponse(
          {required final Map<Currency, dynamic> currencies}) =
      _$_CurrenciesResponse;

  factory _CurrenciesResponse.fromJson(Map<String, dynamic> json) =
      _$_CurrenciesResponse.fromJson;

  @override
  Map<Currency, dynamic> get currencies;
  @override
  @JsonKey(ignore: true)
  _$$_CurrenciesResponseCopyWith<_$_CurrenciesResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
