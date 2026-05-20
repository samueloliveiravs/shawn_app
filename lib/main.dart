import 'package:easy_localization/easy_localization.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:shawn_app/controllers/theme_controller.dart';
import 'package:shawn_app/firebase_options.dart';
import 'package:shawn_app/pages/splash_screen.dart';

import 'shaw_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(SplashScreen());

  await Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
  );

  await EasyLocalization.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();

  bool isDark = prefs.getBool('themeMode') ?? false;

  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeController(isDark: isDark),
      child: EasyLocalization(
        supportedLocales: [Locale('en', 'US'), Locale('pt', 'BR')],
        path: 'assets/translations',
        fallbackLocale: Locale('pt', 'BR'),
        child: ShawApp(),
      ),
    ),
  );
}
