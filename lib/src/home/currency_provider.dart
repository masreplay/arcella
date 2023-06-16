import 'package:arcella/data/repositories/repositories.dart';
import 'package:arcella/service/service.dart';
import 'package:arcella/src/home/state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'currency_provider.g.dart';

@riverpod
Future<CurrenciesResponse> getCurrencies(GetCurrenciesRef ref) =>
    ref.read(weatherRepositoryProvider).getCurrencies();

// extends riverpod state with AsyncXProvider mixin because it doesn't support idle state
@riverpod
class Convert extends _$Convert with AsyncXProvider<ConvertResponse> {
  @override
  Future<AsyncX<ConvertResponse>> build() async => AsyncX.idle();

  Future<AsyncValue<AsyncX<ConvertResponse>>> run(ConvertQueries data) async =>
      handle(() => ref.read(weatherRepositoryProvider).convert(data));
}
