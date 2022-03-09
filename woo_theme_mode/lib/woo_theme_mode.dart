library woo_theme_mode;

import 'package:flutter/material.dart';

class WooTheme {
  Color? primaryColor;
  Color? background;

  WooTheme(this.primaryColor, this.background);

  ThemeData modeDark() {
    return ThemeData(
      scaffoldBackgroundColor: background ?? Colors.grey.shade900,
      primaryColor: primaryColor ?? Colors.blue,
      colorScheme: const ColorScheme.dark(),
    );
  }

  ThemeData modeClair() {
    return ThemeData(
      scaffoldBackgroundColor: background ?? Colors.white,
      primaryColor: primaryColor ?? Colors.blue,
      colorScheme: const ColorScheme.light(),
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
