import 'dart:async';

import 'package:arcella/service/service.dart';
import 'package:arcella/src/home/state.dart';
import 'package:arcella/value_notifier.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:form_validator/form_validator.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'currency_picker.dart';
import 'currency_provider.dart';
import 'form_body.dart';

class HomePage extends StatefulHookConsumerWidget {
  const HomePage({super.key});

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  Timer? _timer;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;

    final currenciesState = ref.watch(getCurrenciesProvider);
    final convertState = ref.watch(convertProvider);

    final fromCurrency = useState<Currency?>(null);
    final toCurrency = useState<Currency?>(null);
    final realTime = useState<bool>(false);
    final amountTextEditingController = useTextEditingController();

    // best practice with hooks is to use a function
    convert() {
      convertCurrency(
        formKey: _formKey,
        from: fromCurrency.value,
        to: toCurrency.value,
        amount: amountTextEditingController.text,
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text(l10n.appName)),
      body: currenciesState.when(
        data: (data) {
          return FormBody(
            formKey: _formKey,
            padding: const EdgeInsets.all(8.0),
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SwitchListTile(
                title: Text(l10n.realTime),
                value: realTime.value,
                onChanged: realTime.update,
              ),
              CurrencyAutoComplete(
                currencies: data.currencies,
                labelText: l10n.from,
                value: fromCurrency.value,
                onChanged: (value) {
                  fromCurrency.update(value);
                  convert();
                },
              ),
              CurrencyAutoComplete(
                currencies: data.currencies,
                labelText: l10n.to,
                value: toCurrency.value,
                onChanged: (value) {
                  toCurrency.update(value);
                  convert();
                },
              ),
              // Flip
              TextButton.icon(
                onPressed: () {
                  final Currency? from = fromCurrency.value;
                  final Currency? to = toCurrency.value;
                  fromCurrency.update(to);
                  toCurrency.update(from);
                  convert();
                },
                icon: const Icon(Icons.swap_vert_rounded),
                label: Text(l10n.swap),
              ),
              TextFormField(
                controller: amountTextEditingController,
                keyboardType: TextInputType.number,
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
                decoration: InputDecoration(
                  border: const OutlineInputBorder(),
                  labelText: l10n.amount,
                ),
                validator: ValidationBuilder()
                    .required(l10n.validatorRequiredField)
                    .build(),
                onChanged: (value) {
                  if (realTime.value) {
                    _timer?.cancel();
                    _timer = Timer(const Duration(milliseconds: 500), convert);
                  }
                },
              ),
              ConversionWidget(state: convertState),
              if (!realTime.value)
                FilledButton(
                  onPressed: convert,
                  child: const Text("Convert"),
                ),
            ],
          );
        },
        error: (error, stackTrace) {
          return Center(
            child: Text(l10n.defaultErrorMessage),
          );
        },
        loading: () {
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }

  Future<void> convertCurrency({
    required GlobalKey<FormState> formKey,
    required Currency? from,
    required Currency? to,
    required String amount,
  }) async {
    if (!formKey.currentState!.validate()) return;

    final data = ConvertQueries(
      from: from!,
      to: to!,
      amount: double.parse(amount),
    );
    await ref.read(convertProvider.notifier).run(data);
    ref.read(convertProvider).whenOrNull(data: (data) {});
  }
}

class ConversionWidget extends StatelessWidget {
  const ConversionWidget({super.key, required this.state});

  final AsyncValue<AsyncX<ConvertResponse>> state;

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    final theme = Theme.of(context);

    return state.whenX(
      idle: () => const SizedBox(),
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      data: (data) {
        // final num rate = data.result['rate'];
        final num targetAmount = data.result.values.first;
        final String target = data.result.keys.first;

        final titleStyle = theme.textTheme.bodyLarge;
        final textStyle = theme.textTheme.headlineMedium;

        return Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(data.base, style: titleStyle),
                  Text("${data.amount}", style: textStyle),
                ],
              ),
            ),
            const Icon(Icons.arrow_forward),
            Expanded(
              child: Column(
                children: [
                  Text(target, style: titleStyle),
                  Text("$targetAmount", style: textStyle),
                ],
              ),
            ),
          ],
        );
      },
      error: (Object error, StackTrace stackTrace) {
        // handle errors here if exists
        return Center(
          child: Text(l10n.defaultErrorMessage),
        );
      },
    );
  }
}
