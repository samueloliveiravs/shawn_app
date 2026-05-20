import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shawn_app/controllers/theme_controller.dart';
import 'package:shawn_app/routes/app_pages.dart';
import 'package:shawn_app/routes/app_routes.dart';

class ShawApp extends StatelessWidget {
  const ShawApp({super.key});

  @override
  Widget build(BuildContext context) {
    var themeController = context.watch<ThemeController>();

    return MaterialApp(
      initialRoute: AppRoutes.login,
      routes: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: themeController.isDark ? ThemeData.dark() : ThemeData.light(),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
    );
  }
}
