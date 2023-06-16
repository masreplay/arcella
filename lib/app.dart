import 'package:arcella/src/home/home_page.dart';
import 'package:arcella/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    const theme = AppThemeData(extraColor: Colors.red);

    return MaterialApp(
      theme: theme.build(),
      home: const HomePage(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
    );
  }
}
