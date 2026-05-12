import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shawn_app/controllers/fake_api_controller.dart';
import 'package:shawn_app/controllers/theme_controller.dart';

class ListaFatosPage extends StatefulWidget {
  const ListaFatosPage({super.key});

  @override
  State<ListaFatosPage> createState() => _ListaFatosPageState();
}

class _ListaFatosPageState extends State<ListaFatosPage> {
  final contollerApi = FakeApiController();

  bool isPressed = false;

  // @override
  @override
  Widget build(BuildContext context) {
    final themeController = context.watch<ThemeController>();

    return ListenableBuilder(
      listenable: contollerApi,
      builder: (context, _) {
        Widget body = Container();
        if (contollerApi.isLoading) {
          body = Center(
            key: ValueKey("Carregando"),
            child: CircularProgressIndicator(),
          );
        } else if (contollerApi.error.isNotEmpty) {
          body = Center(
            key: ValueKey("TentarNovamente"),
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
            key: ValueKey("CarregarDados"),
            child: GestureDetector(
              onTapDown: (details) {
                isPressed = true;
                print(isPressed);
              },
              onTapUp: (details) {
                isPressed = false;
                print(isPressed);
              },
              onTapCancel: () {
                isPressed = false;
              },
              child: AnimatedScale(
                duration: Duration(milliseconds: 200),
                scale: isPressed ? 0.5 : 1,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Carregar Dados"),
                ),
              ),
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
          body: AnimatedSwitcher(
            duration: Duration(milliseconds: 300),
            child: body,
          ),
        );
      },
    );
  }
}
