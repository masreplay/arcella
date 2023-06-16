import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemeData extends ThemeExtension<AppThemeData> {
  // extra colors
  final Color extraColor;

  const AppThemeData({required this.extraColor});

  ThemeData build() {
    final theme = ThemeData(
      useMaterial3: true,
      colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
    );

    return theme.copyWith(
      textTheme: GoogleFonts.openSansTextTheme(
        theme.textTheme,
      ),
    );
  }

  @override
  ThemeExtension<AppThemeData> copyWith({
    Color? extraColor,
  }) {
    return AppThemeData(
      extraColor: extraColor ?? this.extraColor,
    );
  }

  @override
  ThemeExtension<AppThemeData> lerp(
      covariant ThemeExtension<AppThemeData>? other, double t) {
    if (other is! AppThemeData) {
      return this;
    }
    return AppThemeData(
      extraColor: Color.lerp(extraColor, other.extraColor, t)!,
    );
  }
}
