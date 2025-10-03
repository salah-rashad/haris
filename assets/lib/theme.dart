import "package:flutter/material.dart";

class MaterialTheme {
  final TextTheme textTheme;

  const MaterialTheme(this.textTheme);

  static ColorScheme lightScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff38693c),
      surfaceTint: Color(0xff38693c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xffb9f0b8),
      onPrimaryContainer: Color(0xff1f5027),
      secondary: Color(0xff516350),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xffd4e8d0),
      onSecondaryContainer: Color(0xff3a4b39),
      tertiary: Color(0xff39656c),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xffbcebf2),
      onTertiaryContainer: Color(0xff1f4d53),
      error: Color(0xffba1a1a),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffffdad6),
      onErrorContainer: Color(0xff93000a),
      surface: Color(0xfff7fbf2),
      onSurface: Color(0xff181d18),
      onSurfaceVariant: Color(0xff424940),
      outline: Color(0xff72796f),
      outlineVariant: Color(0xffc2c9bd),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322c),
      inversePrimary: Color(0xff9ed49d),
      primaryFixed: Color(0xffb9f0b8),
      onPrimaryFixed: Color(0xff002107),
      primaryFixedDim: Color(0xff9ed49d),
      onPrimaryFixedVariant: Color(0xff1f5027),
      secondaryFixed: Color(0xffd4e8d0),
      onSecondaryFixed: Color(0xff101f10),
      secondaryFixedDim: Color(0xffb9ccb5),
      onSecondaryFixedVariant: Color(0xff3a4b39),
      tertiaryFixed: Color(0xffbcebf2),
      onTertiaryFixed: Color(0xff001f23),
      tertiaryFixedDim: Color(0xffa1ced6),
      onTertiaryFixedVariant: Color(0xff1f4d53),
      surfaceDim: Color(0xffd7dbd3),
      surfaceBright: Color(0xfff7fbf2),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f5ec),
      surfaceContainer: Color(0xffebefe6),
      surfaceContainerHigh: Color(0xffe6e9e1),
      surfaceContainerHighest: Color(0xffe0e4db),
    );
  }

  ThemeData light() {
    return theme(lightScheme());
  }

  static ColorScheme lightMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff0b3f17),
      surfaceTint: Color(0xff38693c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff46784a),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff2a3a2a),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff60725e),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff083c42),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff48747b),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff740006),
      onError: Color(0xffffffff),
      errorContainer: Color(0xffcf2c27),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7fbf2),
      onSurface: Color(0xff0e120d),
      onSurfaceVariant: Color(0xff313830),
      outline: Color(0xff4d544c),
      outlineVariant: Color(0xff686f66),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322c),
      inversePrimary: Color(0xff9ed49d),
      primaryFixed: Color(0xff46784a),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff2e5f33),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff60725e),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff485947),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff48747b),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff2f5b62),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffc4c8bf),
      surfaceBright: Color(0xfff7fbf2),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xfff1f5ec),
      surfaceContainer: Color(0xffe6e9e1),
      surfaceContainerHigh: Color(0xffdaded6),
      surfaceContainerHighest: Color(0xffcfd3ca),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme());
  }

  static ColorScheme lightHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.light,
      primary: Color(0xff00340f),
      surfaceTint: Color(0xff38693c),
      onPrimary: Color(0xffffffff),
      primaryContainer: Color(0xff225329),
      onPrimaryContainer: Color(0xffffffff),
      secondary: Color(0xff203020),
      onSecondary: Color(0xffffffff),
      secondaryContainer: Color(0xff3d4d3c),
      onSecondaryContainer: Color(0xffffffff),
      tertiary: Color(0xff003237),
      onTertiary: Color(0xffffffff),
      tertiaryContainer: Color(0xff224f56),
      onTertiaryContainer: Color(0xffffffff),
      error: Color(0xff600004),
      onError: Color(0xffffffff),
      errorContainer: Color(0xff98000a),
      onErrorContainer: Color(0xffffffff),
      surface: Color(0xfff7fbf2),
      onSurface: Color(0xff000000),
      onSurfaceVariant: Color(0xff000000),
      outline: Color(0xff272e26),
      outlineVariant: Color(0xff444b43),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xff2d322c),
      inversePrimary: Color(0xff9ed49d),
      primaryFixed: Color(0xff225329),
      onPrimaryFixed: Color(0xffffffff),
      primaryFixedDim: Color(0xff063b14),
      onPrimaryFixedVariant: Color(0xffffffff),
      secondaryFixed: Color(0xff3d4d3c),
      onSecondaryFixed: Color(0xffffffff),
      secondaryFixedDim: Color(0xff263726),
      onSecondaryFixedVariant: Color(0xffffffff),
      tertiaryFixed: Color(0xff224f56),
      onTertiaryFixed: Color(0xffffffff),
      tertiaryFixedDim: Color(0xff03393f),
      onTertiaryFixedVariant: Color(0xffffffff),
      surfaceDim: Color(0xffb6bab2),
      surfaceBright: Color(0xfff7fbf2),
      surfaceContainerLowest: Color(0xffffffff),
      surfaceContainerLow: Color(0xffeef2e9),
      surfaceContainer: Color(0xffe0e4db),
      surfaceContainerHigh: Color(0xffd2d6cd),
      surfaceContainerHighest: Color(0xffc4c8bf),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme());
  }

  static ColorScheme darkScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xff9ed49d),
      surfaceTint: Color(0xff9ed49d),
      onPrimary: Color(0xff033912),
      primaryContainer: Color(0xff1f5027),
      onPrimaryContainer: Color(0xffb9f0b8),
      secondary: Color(0xffb9ccb5),
      onSecondary: Color(0xff243424),
      secondaryContainer: Color(0xff3a4b39),
      onSecondaryContainer: Color(0xffd4e8d0),
      tertiary: Color(0xffa1ced6),
      onTertiary: Color(0xff00363c),
      tertiaryContainer: Color(0xff1f4d53),
      onTertiaryContainer: Color(0xffbcebf2),
      error: Color(0xffffb4ab),
      onError: Color(0xff690005),
      errorContainer: Color(0xff93000a),
      onErrorContainer: Color(0xffffdad6),
      surface: Color(0xff101510),
      onSurface: Color(0xffe0e4db),
      onSurfaceVariant: Color(0xffc2c9bd),
      outline: Color(0xff8c9389),
      outlineVariant: Color(0xff424940),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e4db),
      inversePrimary: Color(0xff38693c),
      primaryFixed: Color(0xffb9f0b8),
      onPrimaryFixed: Color(0xff002107),
      primaryFixedDim: Color(0xff9ed49d),
      onPrimaryFixedVariant: Color(0xff1f5027),
      secondaryFixed: Color(0xffd4e8d0),
      onSecondaryFixed: Color(0xff101f10),
      secondaryFixedDim: Color(0xffb9ccb5),
      onSecondaryFixedVariant: Color(0xff3a4b39),
      tertiaryFixed: Color(0xffbcebf2),
      onTertiaryFixed: Color(0xff001f23),
      tertiaryFixedDim: Color(0xffa1ced6),
      onTertiaryFixedVariant: Color(0xff1f4d53),
      surfaceDim: Color(0xff101510),
      surfaceBright: Color(0xff363a34),
      surfaceContainerLowest: Color(0xff0b0f0b),
      surfaceContainerLow: Color(0xff181d18),
      surfaceContainer: Color(0xff1c211b),
      surfaceContainerHigh: Color(0xff272b26),
      surfaceContainerHighest: Color(0xff313630),
    );
  }

  ThemeData dark() {
    return theme(darkScheme());
  }

  static ColorScheme darkMediumContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffb3eab2),
      surfaceTint: Color(0xff9ed49d),
      onPrimary: Color(0xff002d0b),
      primaryContainer: Color(0xff699d6b),
      onPrimaryContainer: Color(0xff000000),
      secondary: Color(0xffcee2ca),
      onSecondary: Color(0xff1a291a),
      secondaryContainer: Color(0xff839681),
      onSecondaryContainer: Color(0xff000000),
      tertiary: Color(0xffb6e4ec),
      onTertiary: Color(0xff002a30),
      tertiaryContainer: Color(0xff6c989f),
      onTertiaryContainer: Color(0xff000000),
      error: Color(0xffffd2cc),
      onError: Color(0xff540003),
      errorContainer: Color(0xffff5449),
      onErrorContainer: Color(0xff000000),
      surface: Color(0xff101510),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffd7ded3),
      outline: Color(0xffadb4a9),
      outlineVariant: Color(0xff8b9288),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e4db),
      inversePrimary: Color(0xff215228),
      primaryFixed: Color(0xffb9f0b8),
      onPrimaryFixed: Color(0xff001603),
      primaryFixedDim: Color(0xff9ed49d),
      onPrimaryFixedVariant: Color(0xff0b3f17),
      secondaryFixed: Color(0xffd4e8d0),
      onSecondaryFixed: Color(0xff061407),
      secondaryFixedDim: Color(0xffb9ccb5),
      onSecondaryFixedVariant: Color(0xff2a3a2a),
      tertiaryFixed: Color(0xffbcebf2),
      onTertiaryFixed: Color(0xff001417),
      tertiaryFixedDim: Color(0xffa1ced6),
      onTertiaryFixedVariant: Color(0xff083c42),
      surfaceDim: Color(0xff101510),
      surfaceBright: Color(0xff414640),
      surfaceContainerLowest: Color(0xff050805),
      surfaceContainerLow: Color(0xff1a1f1a),
      surfaceContainer: Color(0xff252924),
      surfaceContainerHigh: Color(0xff2f342e),
      surfaceContainerHighest: Color(0xff3a3f39),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme());
  }

  static ColorScheme darkHighContrastScheme() {
    return const ColorScheme(
      brightness: Brightness.dark,
      primary: Color(0xffc6fec4),
      surfaceTint: Color(0xff9ed49d),
      onPrimary: Color(0xff000000),
      primaryContainer: Color(0xff9ad09a),
      onPrimaryContainer: Color(0xff000f02),
      secondary: Color(0xffe2f6dd),
      onSecondary: Color(0xff000000),
      secondaryContainer: Color(0xffb5c8b1),
      onSecondaryContainer: Color(0xff020e03),
      tertiary: Color(0xffccf8ff),
      onTertiary: Color(0xff000000),
      tertiaryContainer: Color(0xff9dcad2),
      onTertiaryContainer: Color(0xff000e10),
      error: Color(0xffffece9),
      onError: Color(0xff000000),
      errorContainer: Color(0xffffaea4),
      onErrorContainer: Color(0xff220001),
      surface: Color(0xff101510),
      onSurface: Color(0xffffffff),
      onSurfaceVariant: Color(0xffffffff),
      outline: Color(0xffebf2e6),
      outlineVariant: Color(0xffbec5ba),
      shadow: Color(0xff000000),
      scrim: Color(0xff000000),
      inverseSurface: Color(0xffe0e4db),
      inversePrimary: Color(0xff215228),
      primaryFixed: Color(0xffb9f0b8),
      onPrimaryFixed: Color(0xff000000),
      primaryFixedDim: Color(0xff9ed49d),
      onPrimaryFixedVariant: Color(0xff001603),
      secondaryFixed: Color(0xffd4e8d0),
      onSecondaryFixed: Color(0xff000000),
      secondaryFixedDim: Color(0xffb9ccb5),
      onSecondaryFixedVariant: Color(0xff061407),
      tertiaryFixed: Color(0xffbcebf2),
      onTertiaryFixed: Color(0xff000000),
      tertiaryFixedDim: Color(0xffa1ced6),
      onTertiaryFixedVariant: Color(0xff001417),
      surfaceDim: Color(0xff101510),
      surfaceBright: Color(0xff4d514b),
      surfaceContainerLowest: Color(0xff000000),
      surfaceContainerLow: Color(0xff1c211b),
      surfaceContainer: Color(0xff2d322c),
      surfaceContainerHigh: Color(0xff383d37),
      surfaceContainerHighest: Color(0xff434842),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme());
  }

  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.surface,
    canvasColor: colorScheme.surface,
  );

  List<ExtendedColor> get extendedColors => [];
}

class ExtendedColor {
  final Color seed, value;
  final ColorFamily light;
  final ColorFamily lightHighContrast;
  final ColorFamily lightMediumContrast;
  final ColorFamily dark;
  final ColorFamily darkHighContrast;
  final ColorFamily darkMediumContrast;

  const ExtendedColor({
    required this.seed,
    required this.value,
    required this.light,
    required this.lightHighContrast,
    required this.lightMediumContrast,
    required this.dark,
    required this.darkHighContrast,
    required this.darkMediumContrast,
  });
}

class ColorFamily {
  const ColorFamily({
    required this.color,
    required this.onColor,
    required this.colorContainer,
    required this.onColorContainer,
  });

  final Color color;
  final Color onColor;
  final Color colorContainer;
  final Color onColorContainer;
}
