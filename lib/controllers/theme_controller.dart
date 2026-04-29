import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeController extends ChangeNotifier {
  static const _key = 'themeMode';

  bool isDark;

  ThemeController({required this.isDark});

  Future<void> trocarTema() async {
    isDark = !isDark;

    final prefs = await SharedPreferences.getInstance();
    prefs.setBool(_key, isDark);

    notifyListeners();
  }
}
