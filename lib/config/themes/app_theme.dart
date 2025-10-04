import 'package:flutter/material.dart';

part 'dark_theme.dart';

part 'light_theme.dart';

const String _fontFamily = 'Lexend';

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
    fontFamily: _fontFamily,

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
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        shadowColor: colorScheme.primaryFixed,
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 32),
        elevation: 3,
        foregroundColor: colorScheme.surface,
        textStyle: textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),
      ),
    ),
    dialogTheme: DialogThemeData(
      insetPadding: const EdgeInsets.all(16.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      backgroundColor: colorScheme.surface,
    ),
    bottomSheetTheme: const BottomSheetThemeData(
      showDragHandle: false,
      backgroundColor: Colors.transparent,
    ),
  );
}

// This function creates a full Material 3 TextTheme, overriding
// the font family in every style to ensure consistency.
TextTheme _createCustomTextTheme(bool isDark) {
  final TextTheme baseTheme = isDark
      ? ThemeData.dark(useMaterial3: true).textTheme
      : ThemeData.light(useMaterial3: true).textTheme;

  // Define a base TextStyle to easily apply font family and a default color/height
  final TextStyle baseStyle = TextStyle(
    fontFamily: _fontFamily,
    // Inherit the base text color from the base theme's bodyMedium or primary text color
    color: baseTheme.bodyMedium?.color ?? Colors.black,
    height: 1.4, // Standard line height for good readability
  );

  return TextTheme(
    // -------------------------------------------------------------
    // 1. Display Styles (Very Large, reserved for headlines/hero text)
    // -------------------------------------------------------------
    displayLarge: baseStyle.copyWith(
      fontSize: 57,
      fontWeight: FontWeight.w700, // Bold
      letterSpacing: -0.25,
    ),
    displayMedium: baseStyle.copyWith(
      fontSize: 45,
      fontWeight: FontWeight.w600, // Semi-Bold
    ),
    displaySmall: baseStyle.copyWith(
      fontSize: 36,
      fontWeight: FontWeight.w500, // Medium
    ),

    // -------------------------------------------------------------
    // 2. Headline Styles (The most common "Today's Quests" size)
    // -------------------------------------------------------------
    headlineLarge: baseStyle.copyWith(
      fontSize: 32,
      fontWeight: FontWeight.w900, // Black for high impact
    ),
    headlineMedium: baseStyle.copyWith(
      fontSize: 26,
      fontWeight: FontWeight.w800, // Extra Bold
    ),
    headlineSmall: baseStyle.copyWith(
      fontSize: 22,
      fontWeight: FontWeight.w700, // Bold
    ),

    // -------------------------------------------------------------
    // 3. Title Styles (Used for sub-headers, dialog titles, etc.)
    // -------------------------------------------------------------
    titleLarge: baseStyle.copyWith(
      fontSize: 20,
      fontWeight: FontWeight.w600, // Semi-Bold
    ),
    titleMedium: baseStyle.copyWith(
      fontSize: 18,
      fontWeight: FontWeight.w500, // Medium
      letterSpacing: 0.15,
    ),
    titleSmall: baseStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w500, // Medium
      letterSpacing: 0.1,
    ),

    // -------------------------------------------------------------
    // 4. Body Styles (Used for task descriptions, list items, etc.)
    // -------------------------------------------------------------
    bodyLarge: baseStyle.copyWith(
      fontSize: 16,
      fontWeight: FontWeight.w400, // Regular
      letterSpacing: 0.15,
    ),
    bodyMedium: baseStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w400, // Regular
      letterSpacing: 0.25,
    ),
    bodySmall: baseStyle.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w300, // Light for secondary text/metadata
      letterSpacing: 0.4,
    ),

    // -------------------------------------------------------------
    // 5. Label Styles (Used for buttons, small captions, input hints)
    // -------------------------------------------------------------
    labelLarge: baseStyle.copyWith(
      fontSize: 14,
      fontWeight: FontWeight.w700, // Bold for primary buttons
      letterSpacing: 0, // Often uppercase with spacing
    ),
    labelMedium: baseStyle.copyWith(
      fontSize: 12,
      fontWeight: FontWeight.w500, // Medium
      letterSpacing: 0.5,
    ),
    labelSmall: baseStyle.copyWith(
      fontSize: 11,
      fontWeight: FontWeight.w500, // Medium
      letterSpacing: 0.5,
    ),
  );
}
