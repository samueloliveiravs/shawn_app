import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shawn_app/pages/shaw_home.dart';

class ShawAppDebug extends StatelessWidget {
  const ShawAppDebug({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ShawHome(),
      debugShowCheckedModeBanner: true,
      theme: ThemeData(
        textTheme: GoogleFonts.acmeTextTheme(),
        colorScheme: .fromSeed(
          seedColor: const Color.fromARGB(255, 0, 216, 22),
        ),
      ),
    );
  }
}
