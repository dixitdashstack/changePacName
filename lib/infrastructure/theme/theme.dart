import 'package:flutter/material.dart';

class AppTheme {

  // final primary = const Color(0xFF17a0da);
  // final secondary = const Color(0xFF1380c3);
  // final primary = const Color(0xFF17a0da);
  final primary = const Color(0xFF17a0da);
  final secondary = const Color(0xFF1380c3);
  // final secondary = const Color(0xFF1380c3);
  // final primary = Colors.indigoAccent;
  // final secondary = Colors.indigo;


  // region slider colors and value colors
  Color greenAccent = Colors.greenAccent;
  Color green = Colors.green;
  Color orange = Colors.orange;
  Color red = Colors.red;
  Color orangeAccent = Colors.orangeAccent;
  Color yellow = Colors.yellow;
  Color greenShade400 = Colors.green.shade400;
  Color greenShade800 = Colors.green.shade800;
  Color greenShade600 = Colors.green.shade600;
  Color greenShade300 = Colors.green.shade300;
  Color orangeShade300 = Colors.orange.shade300;
  Color greenShade200 = Colors.green.shade200;
  Color greenAccentShade100 = Colors.greenAccent.shade100;
  Color greenShade700 = Colors.green.shade700;
  Color blue = Colors.blue;
  Color black = Colors.black;

  // endregion

  ThemeData lightTheme(BuildContext context) {
    return Theme.of(context).copyWith(
      primaryColor: primary,
      scaffoldBackgroundColor: Colors.white,
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: context.titleMedium?.copyWith(color: Colors.black),
      ),
      colorScheme: ColorScheme.light(
        primary: primary,
        secondary: secondary,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondary,
          foregroundColor: Colors.white,
          elevation: 5,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondary,
          foregroundColor: Colors.white,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
    );
  }

  ThemeData darkTheme(BuildContext context) {
    return ThemeData.dark().copyWith(
      primaryColor: primary,
      colorScheme: ColorScheme.dark(
        primary: primary,
        secondary: secondary,
      ),
      appBarTheme: AppBarTheme(
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        titleTextStyle: context.titleMedium?.copyWith(color: Colors.white),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: secondary),
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: secondary,
          foregroundColor: Colors.white,
          shape: const BeveledRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8),
            ),
          ),
        ),
      ),
    );
  }
}

extension TextTheme on BuildContext {
  TextStyle? get titleLarge => Theme.of(this).textTheme.titleLarge?.copyWith(color: textColor);

  TextStyle? get headlineLarge => Theme.of(this).textTheme.headlineLarge?.copyWith(color: textColor);

  TextStyle? get headlineMedium => Theme.of(this).textTheme.headlineMedium?.copyWith(color: textColor);

  TextStyle? get headlineSmall => Theme.of(this).textTheme.headlineSmall?.copyWith(color: textColor);

  TextStyle? get titleMedium => Theme.of(this).textTheme.titleMedium?.copyWith(color: textColor);

  TextStyle? get titleSmall => Theme.of(this).textTheme.titleSmall?.copyWith(color: textColor);

  TextStyle? get labelLarge => Theme.of(this).textTheme.labelLarge?.copyWith(color: textColor);

  TextStyle? get labelMedium => Theme.of(this).textTheme.labelSmall?.copyWith(color: textColor);

  TextStyle? get labelSmall => Theme.of(this).textTheme.labelSmall?.copyWith(color: textColor);

  TextStyle? get bodyLarge => Theme.of(this).textTheme.bodyLarge?.copyWith(color: textColor);

  TextStyle? get bodyMedium => Theme.of(this).textTheme.bodyMedium?.copyWith(color: textColor);

  TextStyle? get bodySmall => Theme.of(this).textTheme.bodySmall?.copyWith(color: textColor);

  TextStyle? get subTitle1 => Theme.of(this).textTheme.titleMedium?.copyWith(color: textColor);

  TextStyle? get subTitle2 => Theme.of(this).textTheme.titleSmall?.copyWith(color: textColor);
}

extension ThemeColor on BuildContext {
  Color? get primaryColor => Theme.of(this).colorScheme.primary;

  Color? get secondaryColor => Theme.of(this).colorScheme.secondary;

  Color? get cardColor => Theme.of(this).cardColor;

  Color? get dividerColor => Theme.of(this).dividerColor;

  Color? get disableColor => Theme.of(this).disabledColor;

  Color get colorFF9800 => const Color(0xffFF9800);

  Color get color14B107 => const Color(0xff14B107);

  Color get color0C97D3 => const Color(0xff0C97D3);

  bool get isDark => Theme.of(this).brightness == Brightness.dark;

  LinearGradient get dashBoardHeaderGradient => LinearGradient(
        colors: [primaryColor!, Colors.white],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      );

  LinearGradient get insiteGradient => LinearGradient(
        colors: [
          primaryColor!,
          primaryColor!.withValues(alpha: 0.3),
        ],
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
      );

  Color? get shadowColor => isDark ? Colors.white54 : Colors.black54;

  Color? get canvasColor => Theme.of(this).canvasColor;

  Color get errorColor => isDark ? Colors.redAccent.shade200 : Theme.of(this).colorScheme.error;

  Color? get iconColor => isDark ? Colors.grey.shade300 : Theme.of(this).iconTheme.color;

  Color get hintColor => Theme.of(this).hintColor;

  Color? get textColor => Theme.of(this).brightness == Brightness.dark ? Colors.white : Colors.black;

  Color? get backgroundColor => Theme.of(this).brightness == Brightness.dark ? Colors.black : Colors.white;

  Color get white => Colors.white;

  Color get grey => Colors.grey;

  Color get greyShade400 => Colors.grey.shade400;

  Color get black => Colors.black;

  Color get greenShade300 => Colors.green.shade300;

  Color get red => Colors.red;

  Color get green => Colors.green;

  Color get greenShade200 => Colors.green.shade200;

  Color get greyShade100 => Colors.grey.shade100;

  Color get black26 => Colors.black26;

  Color get black54 => Colors.black54;

  Color get white70 => Colors.white70;

  Color get greenShade800 => Colors.green.shade800;

  Color get greenShade400 => Colors.green.shade400;

  Color get orangeShade300 => Colors.orange.shade300;

  Color get greyShade300 => Colors.grey.shade300;

  Color get orange => Colors.orange;

  Color get black12 => Colors.black12;

  Color get black87 => Colors.black87;

  Color get black45 => Colors.black45;

  Color get black38 => Colors.black38;

  Color get white54 => Colors.white54;

  Color get transparent => Colors.transparent;
}
