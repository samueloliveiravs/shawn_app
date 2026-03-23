import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShawHome extends StatefulWidget {
  const ShawHome({super.key});

  @override
  State<ShawHome> createState() => _ShawHomeState();
}

class _ShawHomeState extends State<ShawHome> {
  int contador = 0;
  var fiel = TextEditingController();
  String text = "";

  void aumentarContador() {
    contador++;
    text = fiel.text;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ShawApp", style: GoogleFonts.acme()),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Vezes que apertou o botão:",
              style: GoogleFonts.acme(fontSize: 40),
            ),
            Text("$contador", style: TextStyle(fontSize: 40)),
            Text(text, style: TextStyle(fontSize: 40)),
            TextField(controller: fiel),
            ElevatedButton(onPressed: () {}, child: Text("Shaw")),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: aumentarContador,
        child: Icon(Icons.gamepad),
      ),
    );
  }
}
