import 'package:flutter/material.dart';
import 'package:shawn_app/service/todos_api.dart';

class TodosPage extends StatelessWidget {
  TodosPage({super.key});

  final todosList = TodosApi().fetchTodos();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de Tarefas"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: FutureBuilder(
        future: todosList,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }

          if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text("Sem dados"));
          }

          if (snapshot.hasData) {
            final list = snapshot.data!;

            return ListView.builder(
              itemCount: list.length,
              itemBuilder: (context, index) {
                final post = list[index];

                return ListTile(
                  title: Text(post.title),
                  leading: Checkbox(
                    value: post.completed,
                    onChanged: (value) {
                      value = !value!;
                    },
                  ),
                );
              },
            );
          }

          return Container();
        },
      ),
    );
  }
}
