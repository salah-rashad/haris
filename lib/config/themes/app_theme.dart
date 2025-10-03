import 'package:flutter/material.dart';

part 'dark_theme.dart';

part 'light_theme.dart';

sealed class AppTheme {
  Brightness get brightness;

  ColorScheme get colorScheme;

  TextTheme get textTheme;

  static AppTheme get light => LightTheme();

  static AppTheme get dark => DarkTheme();

  bool get isDark => brightness == Brightness.dark;

  static AppTheme of(BuildContext context) =>
      Theme.of(context).brightness == Brightness.dark ? dark : light;

  ThemeData themeData() => ThemeData(
    brightness: brightness,
    colorScheme: colorScheme,
    textTheme: textTheme,
    fontFamily: "Lexend",
    cardTheme: CardThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18.0),
        side: BorderSide(color: colorScheme.outlineVariant),
      ),
    ),
    appBarTheme: AppBarTheme(
      centerTitle: true,
      titleTextStyle: textTheme.headlineSmall,
      toolbarHeight: 64,
      actionsPadding: const EdgeInsets.symmetric(horizontal: 18.0),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: colorScheme.primaryFixedDim,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        shadowColor: colorScheme.primaryFixed,
        padding: const EdgeInsets.symmetric(vertical: 22, horizontal: 32),
        elevation: 3,
        foregroundColor: colorScheme.surface,
        textStyle: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
    ),
  );
}
