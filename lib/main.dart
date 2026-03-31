import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:shawn_app/pages/splash_screen.dart';
// import 'package:shawn_app/shaw_app_debug.dart';

import 'shaw_app.dart';

Future<void> main() async {
  //runApp(SplashScreen());

  WidgetsFlutterBinding.ensureInitialized();
  //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  //await Future.delayed(Duration(seconds: 20));
  runApp(ShawApp());
}
