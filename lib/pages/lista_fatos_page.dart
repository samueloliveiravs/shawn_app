import 'package:flutter/material.dart';
import 'package:shawn_app/controllers/fake_api_controller.dart';

class ListaFatosPage extends StatelessWidget {
  ListaFatosPage({super.key});

  final contollerApi = FakeApiController();

  // @override
  @override
  Widget build(BuildContext context) {
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
            title: Text("Gerenciamento de Estado"),
            backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          ),
          body: body,
        );
      },
    );
  }
}
