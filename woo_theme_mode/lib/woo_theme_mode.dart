library woo_theme_mode;

import 'package:flutter/material.dart';

class WooTheme {
  Color? primary;
  Color? secondary;
  Color? background;

  WooTheme(this.primary, this.secondary, this.background);

  static ThemeData modeDark(Color? primary, Color? secondary, Color? background) {
    return ThemeData(
      scaffoldBackgroundColor: background ?? Colors.grey.shade900,
      colorScheme: ColorScheme.dark(
        primary: primary ?? Colors.blue,
        secondary: secondary ?? Colors.purple,
      ),
    );
  }

  static ThemeData modeClair(Color? primary, Color? secondary, Color? background) {
    return ThemeData(
      scaffoldBackgroundColor: background ?? Colors.white,
      colorScheme: ColorScheme.light(
        primary: primary ?? Colors.blue,
        secondary: secondary ?? Colors.purple,
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