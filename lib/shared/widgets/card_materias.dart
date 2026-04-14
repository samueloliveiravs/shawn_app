import 'package:flutter/material.dart';

class CardMaterias extends StatelessWidget {
  final String nomeMateria;
  final String turno;
  const CardMaterias({
    super.key,
    required this.nomeMateria,
    required this.turno,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 300,
      margin: EdgeInsets.symmetric(vertical: 20),
      decoration: BoxDecoration(
        color: Colors.blueGrey,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Expanded(
            child: Container(width: double.infinity, color: Colors.blueAccent),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              width: double.infinity,
              color: const Color.fromARGB(255, 193, 193, 193),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(turno),
                  Text(
                    nomeMateria,
                    style: TextStyle(fontSize: 30, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
