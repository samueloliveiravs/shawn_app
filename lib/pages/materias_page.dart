import 'package:easy_localization/easy_localization.dart';
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
    Aula(materia: "logic".tr(), turno: "morning".tr()),
    Aula(materia: "oop".tr(), turno: "night".tr()),
    Aula(materia: "data_structures".tr(), turno: "morning".tr()),
    Aula(materia: "algorithms".tr(), turno: "afternoon".tr()),
    Aula(materia: "discrete_math".tr(), turno: "afternoon".tr()),
    Aula(materia: "operations_research".tr(), turno: "night".tr()),
    Aula(materia: "database".tr(), turno: "night".tr()),
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
