library woo_theme_mode;

import 'package:flutter/material.dart';

class WooTheme {
  Color? primary;
  Color? secondary;
  Color? background;

  WooTheme(this.primary, this.secondary, this.background);

  static ThemeData modeDark({
    Color primary = Colors.blue,
    Color secondary = Colors.purple,
    Color background = Colors.white,
  }) {
    return ThemeData(
      scaffoldBackgroundColor: background,
      colorScheme: ColorScheme.dark(
        primary: primary,
        secondary: secondary,
      ),
    );
  }

  static ThemeData modeClair({
    Color primary = Colors.blue,
    Color secondary = Colors.purple,
    Color background = Colors.white,
  }) {
    return ThemeData(
      scaffoldBackgroundColor: background,
      colorScheme: ColorScheme.light(
        primary: primary,
        secondary: secondary,
      ),
    );
  }
}

class WooThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  /// fonction qui modifie la valeur du theme
  void changeTheme(bool value) {
    themeMode = value ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}
