import 'package:flutter/cupertino.dart';
import 'package:shawn_app/pages/hero_page.dart';
import 'package:shawn_app/pages/lista_fatos_page.dart';
import 'package:shawn_app/pages/login_page.dart';
import 'package:shawn_app/pages/materias_page.dart';
import 'package:shawn_app/pages/media_page.dart';
import 'package:shawn_app/pages/pegar_localizacao.dart';
import 'package:shawn_app/pages/shaw_home.dart';
import 'package:shawn_app/pages/todos_page.dart';
import 'package:shawn_app/routes/app_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.home: (context) => LoginPage(),
    AppRoutes.dashboard: (context) => ShawHome(),
    AppRoutes.materias: (context) => MateriasPage(),
    AppRoutes.estado: (context) => ListaFatosPage(),
    AppRoutes.todos: (context) => TodosPage(),
    AppRoutes.media: (context) => MediaPage(),
    AppRoutes.heroPage: (context) => HeroPage(),
    AppRoutes.locPage: (context) => PegarLocalizacao(),
  };
}
