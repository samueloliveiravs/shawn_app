import 'package:flutter/material.dart';
import 'package:shawn_app/pages/login_page.dart';

class ShawApp extends StatelessWidget {
  const ShawApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
    );
  }
}
