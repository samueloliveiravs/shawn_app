import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shawn_app/controllers/fake_api_controller.dart';
import 'package:shawn_app/controllers/theme_controller.dart';

class ListaFatosPage extends StatelessWidget {
  ListaFatosPage({super.key});

  final contollerApi = FakeApiController();

  // @override
  @override
  Widget build(BuildContext context) {
    final themeController = context.watch<ThemeController>();

    return ListenableBuilder(
      listenable: contollerApi,
      builder: (context, _) {
        Widget body = Container();
        if (contollerApi.isLoading) {
          body = Center(child: CircularProgressIndicator());
        } else if (contollerApi.error.isNotEmpty) {
          body = Center(
            child: Column(
              children: [
                Text(contollerApi.error),
                ElevatedButton(
                  onPressed: contollerApi.getData,
                  child: Text("Tente Novamente"),
                ),
              ],
            ),
          );
        } else if (contollerApi.dados.isEmpty) {
          body = Center(
            child: ElevatedButton(
              onPressed: contollerApi.getData,
              child: Text("Carregar Dados"),
            ),
          );
        } else {
          body = ListView.builder(
            itemCount: contollerApi.dados.length,
            itemBuilder: (context, index) {
              return ListTile(title: Text(contollerApi.dados[index]));
            },
          );
        }
        return Scaffold(
          appBar: AppBar(
            title: Text("Gerenciamento"),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              Icon(Icons.light_mode),
              Switch(
                value: themeController.isDark,
                onChanged: (_) {
                  themeController.trocarTema();
                },
              ),
              Icon(Icons.dark_mode),
            ],
          ),
          body: body,
        );
      },
    );
  }
}
