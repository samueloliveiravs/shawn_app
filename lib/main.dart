import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shawn_app/controllers/theme_controller.dart';
import 'package:shawn_app/pages/splash_screen.dart';
// import 'package:flutter/services.dart';
// import 'package:shawn_app/pages/splash_screen.dart';
// import 'package:shawn_app/shaw_app_debug.dart';

import 'shaw_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(SplashScreen());

  final prefs = await SharedPreferences.getInstance();

  bool isDark = prefs.getBool('themeMode') ?? false;

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeController(isDark: isDark),
      child: ShawApp(),
    ),
  );
}
