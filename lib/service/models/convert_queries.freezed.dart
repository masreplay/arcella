// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'convert_queries.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConvertQueries _$ConvertQueriesFromJson(Map<String, dynamic> json) {
  return _ConvertQueries.fromJson(json);
}

/// @nodoc
mixin _$ConvertQueries {
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  double get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ConvertQueriesCopyWith<ConvertQueries> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConvertQueriesCopyWith<$Res> {
  factory $ConvertQueriesCopyWith(
          ConvertQueries value, $Res Function(ConvertQueries) then) =
      _$ConvertQueriesCopyWithImpl<$Res, ConvertQueries>;
  @useResult
  $Res call({String from, String to, double amount});
}

/// @nodoc
class _$ConvertQueriesCopyWithImpl<$Res, $Val extends ConvertQueries>
    implements $ConvertQueriesCopyWith<$Res> {
  _$ConvertQueriesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConvertQueriesCopyWith<$Res>
    implements $ConvertQueriesCopyWith<$Res> {
  factory _$$_ConvertQueriesCopyWith(
          _$_ConvertQueries value, $Res Function(_$_ConvertQueries) then) =
      __$$_ConvertQueriesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String to, double amount});
}

/// @nodoc
class __$$_ConvertQueriesCopyWithImpl<$Res>
    extends _$ConvertQueriesCopyWithImpl<$Res, _$_ConvertQueries>
    implements _$$_ConvertQueriesCopyWith<$Res> {
  __$$_ConvertQueriesCopyWithImpl(
      _$_ConvertQueries _value, $Res Function(_$_ConvertQueries) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? amount = null,
  }) {
    return _then(_$_ConvertQueries(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ConvertQueries implements _ConvertQueries {
  _$_ConvertQueries(
      {required this.from, required this.to, required this.amount});

  factory _$_ConvertQueries.fromJson(Map<String, dynamic> json) =>
      _$$_ConvertQueriesFromJson(json);

  @override
  final String from;
  @override
  final String to;
  @override
  final double amount;

  @override
  String toString() {
    return 'ConvertQueries(from: $from, to: $to, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConvertQueries &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, to, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConvertQueriesCopyWith<_$_ConvertQueries> get copyWith =>
      __$$_ConvertQueriesCopyWithImpl<_$_ConvertQueries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ConvertQueriesToJson(
      this,
    );
  }
}

abstract class _ConvertQueries implements ConvertQueries {
  factory _ConvertQueries(
      {required final String from,
      required final String to,
      required final double amount}) = _$_ConvertQueries;

  factory _ConvertQueries.fromJson(Map<String, dynamic> json) =
      _$_ConvertQueries.fromJson;

  @override
  String get from;
  @override
  String get to;
  @override
  double get amount;
  @override
  @JsonKey(ignore: true)
  _$$_ConvertQueriesCopyWith<_$_ConvertQueries> get copyWith =>
      throw _privateConstructorUsedError;
}
