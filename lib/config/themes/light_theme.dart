part of 'app_theme.dart';

final class LightTheme extends AppTheme {
  @override
  Brightness get brightness => Brightness.light;

  @override
  TextTheme get textTheme => TextTheme(
    // Home, Today's Quests - Larger, more prominent text
    headlineSmall: const TextStyle(
      fontSize: 20.0,
      fontWeight: FontWeight.w800,
      color: Colors.black87,
    ),

    // Level 3: Devoted
    titleLarge: const TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.w800, // Semi-bold for section headers
      color: Colors.black87,
    ),

    // Pray Fajr, Daily Bonus!
    titleMedium: const TextStyle(
      fontSize: 16.0,
      fontWeight: FontWeight.w600,
      color: Colors.black87,
    ),

    // +50 XP, XP Numbers (1200 / 2000 XP)
    bodyMedium: TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Colors.grey[600], // Secondary text color
    ),

    // Bottom Nav Labels
    labelSmall: const TextStyle(
      fontSize: 14.0,
      fontWeight: FontWeight.normal,
      color: Color(0xFF558f6f), // Primary Green for active item
    ),
  );

  @override
  ColorScheme get colorScheme => const ColorScheme.light(
    // primary: Color(0xFF17cf54),
    // surface: Color(0xFFf6f8f6),
    // onSurface: Color(0xFF111813),
    // onSurfaceVariant: Color(0xFF111813),
    // // onSurfaceVariant: Color(0xFF63886f),
    // // outline: Color(0xFFdce5df),
    // outlineVariant: Color(0xFFdce5df),
    primary: Color(0xff006e27),
    surfaceTint: Color(0xff006e27),
    onPrimary: Color(0xffffffff),
    primaryContainer: Color(0xff17cf54),
    onPrimaryContainer: Color(0xff00521b),
    secondary: Color(0xff236c31),
    onSecondary: Color(0xffffffff),
    secondaryContainer: Color(0xffa8f5aa),
    onSecondaryContainer: Color(0xff2a7236),
    tertiary: Color(0xff006590),
    onTertiary: Color(0xffffffff),
    tertiaryContainer: Color(0xff4cbeff),
    onTertiaryContainer: Color(0xff004b6c),
    error: Color(0xffba1a1a),
    onError: Color(0xffffffff),
    errorContainer: Color(0xffffdad6),
    onErrorContainer: Color(0xff93000a),
    surface: Color(0xfff3fced),
    onSurface: Color(0xff151e15),
    onSurfaceVariant: Color(0xff3c4a3b),
    outline: Color(0xff6c7b6a),
    outlineVariant: Color(0xffdae7df),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xff2a3329),
    inversePrimary: Color(0xff3be365),
    primaryFixed: Color(0xff6bff84),
    onPrimaryFixed: Color(0xff002107),
    primaryFixedDim: Color(0xff3be365),
    onPrimaryFixedVariant: Color(0xff00531c),
    secondaryFixed: Color(0xffa8f5aa),
    onSecondaryFixed: Color(0xff002107),
    secondaryFixedDim: Color(0xff8dd890),
    onSecondaryFixedVariant: Color(0xff00531c),
    tertiaryFixed: Color(0xffc8e6ff),
    onTertiaryFixed: Color(0xff001e2e),
    tertiaryFixedDim: Color(0xff87ceff),
    onTertiaryFixedVariant: Color(0xff004c6d),
    surfaceDim: Color(0xffd3ddcf),
    surfaceBright: Color(0xfff3fced),
    surfaceContainerLowest: Color(0xffffffff),
    surfaceContainerLow: Color(0xffedf7e8),
    surfaceContainer: Color(0xffe7f1e2),
    surfaceContainerHigh: Color(0xffe1ebdd),
    surfaceContainerHighest: Color(0xffdce5d7),
  );
}
