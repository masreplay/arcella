import 'package:arcella/service/service.dart';
import 'package:flutter/material.dart';
import 'package:form_validator/form_validator.dart';

class CurrencyName {
  static const String separator = " - ";

  const CurrencyName({required this.currency, required this.name});

  static CurrencyName? fromString(String value) {
    final result = value.split(separator);

    if (result.length == 2) {
      return CurrencyName(currency: result.first, name: result.last);
    } else {
      return null;
    }
  }

  final String currency;
  final String name;

  String format() => "$currency$separator$name";
}

class CurrencyAutoComplete extends StatelessWidget {
  const CurrencyAutoComplete({
    super.key,
    required this.currencies,
    required this.labelText,
    required this.value,
    required this.onChanged,
  });

  final Map<Currency, dynamic> currencies;
  final String labelText;

  final Currency? value;
  final ValueChanged<Currency?> onChanged;

  /// Returns `true` if the given [value] matches the given [other].
  bool _matchText(String value, {required String other}) =>
      value.toString().toLowerCase().contains(other.toLowerCase());

  /// Returns a list of [CurrencyName] that match the given [query].
  Iterable<CurrencyName> _matchAll({required String query}) sync* {
    for (final MapEntry(key: currency, value: name) in currencies.entries) {
      if (_matchText(name, other: query) ||
          _matchText(currency, other: query)) {
        yield CurrencyName(currency: currency, name: name);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Autocomplete<Currency>(
      optionsBuilder: (textEditingValue) {
        return _matchAll(query: textEditingValue.text)
            .map((e) => e.format())
            .toList();
      },
      onSelected: (option) {
        final result = CurrencyName.fromString(option);

        if (result != null) onChanged(result.currency);
      },
      fieldViewBuilder: (
        context,
        textEditingController,
        focusNode,
        onFieldSubmitted,
      ) {
        return ValueListenableBuilder(
          valueListenable: textEditingController,
          builder: (context, value, child) {
            return TextFormField(
              controller: textEditingController,
              focusNode: focusNode,
              validator: ValidationBuilder().required().build(),
              onFieldSubmitted: (value) {
                final CurrencyName? result =
                    _matchAll(query: value).firstOrNull;

                if (result != null) {
                  textEditingController.text = result.format();
                  onChanged(result.currency);
                }
              },
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: labelText,
                border: const OutlineInputBorder(),
                suffixIcon: value.text.isEmpty
                    ? const Icon(Icons.arrow_drop_down)
                    : IconButton(
                        icon: const Icon(Icons.clear),
                        onPressed: () {
                          textEditingController.clear();
                          onChanged(null);
                        },
                      ),
              ),
            );
          },
        );
      },
    );
  }
}
