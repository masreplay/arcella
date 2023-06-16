// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'currency_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$getCurrenciesHash() => r'd2dc4e29ba6236a4be05af709531e0787653e4ae';

/// See also [getCurrencies].
@ProviderFor(getCurrencies)
final getCurrenciesProvider =
    AutoDisposeFutureProvider<CurrenciesResponse>.internal(
  getCurrencies,
  name: r'getCurrenciesProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$getCurrenciesHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef GetCurrenciesRef = AutoDisposeFutureProviderRef<CurrenciesResponse>;
String _$convertHash() => r'b1617d3a7334327da27ccf78053312c89e9d31db';

/// See also [Convert].
@ProviderFor(Convert)
final convertProvider =
    AutoDisposeAsyncNotifierProvider<Convert, AsyncX<ConvertResponse>>.internal(
  Convert.new,
  name: r'convertProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$convertHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$Convert = AutoDisposeAsyncNotifier<AsyncX<ConvertResponse>>;
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
