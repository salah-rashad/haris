part of 'app_theme.dart';

final class DarkTheme extends AppTheme {
  @override
  Brightness get brightness => Brightness.dark;

  @override
  TextTheme get textTheme => _createCustomTextTheme(true);

  @override
  ColorScheme get colorScheme => const ColorScheme.dark(
    primary: Color(0xff47ec6d),
    surfaceTint: Color(0xff3be365),
    onPrimary: Color(0xff003911),
    primaryContainer: Color(0xff17cf54),
    onPrimaryContainer: Color(0xff00521b),
    secondary: Color(0xff8dd890),
    onSecondary: Color(0xff003911),
    secondaryContainer: Color(0xff02551d),
    onSecondaryContainer: Color(0xff7fc983),
    tertiary: Color(0xff9ed6ff),
    onTertiary: Color(0xff00344d),
    tertiaryContainer: Color(0xff4cbeff),
    onTertiaryContainer: Color(0xff004b6c),
    error: Color(0xffffb4ab),
    onError: Color(0xff690005),
    errorContainer: Color(0xff93000a),
    onErrorContainer: Color(0xffffdad6),
    surface: Color(0xff0d150d),
    onSurface: Color(0xffdce5d7),
    onSurfaceVariant: Color(0xffbbcbb7),
    outline: Color(0xff869583),
    outlineVariant: Color(0xff3c4a3b),
    shadow: Color(0xff000000),
    scrim: Color(0xff000000),
    inverseSurface: Color(0xffdce5d7),
    inversePrimary: Color(0xff006e27),
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
    surfaceDim: Color(0xff0d150d),
    surfaceBright: Color(0xff333b32),
    surfaceContainerLowest: Color(0xff081008),
    surfaceContainerLow: Color(0xff151e15),
    surfaceContainer: Color(0xff192219),
    surfaceContainerHigh: Color(0xff242c23),
    surfaceContainerHighest: Color(0xff2e372d),
  );
}
