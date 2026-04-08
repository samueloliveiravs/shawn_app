import 'package:flutter/cupertino.dart';
import 'package:shawn_app/pages/login_page.dart';
import 'package:shawn_app/pages/shaw_home.dart';
import 'package:shawn_app/routes/app_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.home: (context) => LoginPage(),
    AppRoutes.dashboard: (context) => ShawHome(),
  };
}
