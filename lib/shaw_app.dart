import 'package:flutter/material.dart';
import 'package:shawn_app/routes/app_pages.dart';
import 'package:shawn_app/routes/app_routes.dart';

class ShawApp extends StatelessWidget {
  const ShawApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: AppRoutes.materias,
      routes: AppPages.routes,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
    );
  }
}
