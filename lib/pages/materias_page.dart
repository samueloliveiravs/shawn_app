import 'package:flutter/material.dart';
import 'package:shawn_app/models/aula.dart';
import 'package:shawn_app/shared/widgets/card_materias.dart';

class MateriasPage extends StatelessWidget {
  MateriasPage({super.key});

  // final materias = [
  //   "Logica Computacional",
  //   "POO",
  //   "Estrutura de Dados",
  //   "Algoritmos",
  //   "Matematica Indiscreta",
  //   "Pesquisa Operacional",
  //   "Banco de Dados",
  // ];

  final materias = [
    Aula(materia: "Logica Computacional", turno: "Matutino"),
    Aula(materia: "POO", turno: "Noturno"),
    Aula(materia: "Estrutura de Dados", turno: "Matutino"),
    Aula(materia: "Algoritmos", turno: "Vespertino"),
    Aula(materia: "Matematica Indiscreta", turno: "Verspertino"),
    Aula(materia: "Pesquisa Operacional", turno: "Noturno"),
    Aula(materia: "Banco de Dados", turno: "Noturno"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Materias"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: materias.length,
          itemBuilder: (context, index) {
            return CardMaterias(
              nomeMateria: materias[index].materia,
              turno: materias[index].turno,
            );
          },
        ),
      ),
    );
  }
}
