import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:shawn_app/routes/app_routes.dart';

class PegarLocalizacao extends StatelessWidget {
  PegarLocalizacao({super.key});

  late LocationPermission permission;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Permissão de Localização"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            permission = await Geolocator.checkPermission();
            if (permission == LocationPermission.denied) {
              permission = await Geolocator.requestPermission();
              if (permission == LocationPermission.denied) {
                Navigator.pushNamed(context, AppRoutes.heroPage);
              }
            }
            //Logica de negocio
          },
          child: Text("Pedir Permissão de Loc"),
        ),
      ),
    );
  }
}
