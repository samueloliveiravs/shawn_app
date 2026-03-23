import 'package:flutter/material.dart';
import 'package:shawn_app/pages/shaw_home.dart';

class ShawApp extends StatelessWidget {
  const ShawApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShawHome(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
    );
  }
}