import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ShawHome extends StatefulWidget {
  final String email;
  const ShawHome({super.key, required this.email});

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
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                width: double.infinity,
                color: Colors.red,
                child: Text("Shawn", style: TextStyle(fontSize: 30)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                color: Colors.green,
                child: Text(widget.email, style: TextStyle(fontSize: 30)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: Colors.amber,
                child: Text("Noturno", style: TextStyle(fontSize: 30)),
              ),
            ),
            Row(
              children: [
                Container(
                  color: Colors.red,
                  child: Text("Shawn", style: TextStyle(fontSize: 30)),
                ),
                Container(
                  color: Colors.green,
                  child: Text("Software", style: TextStyle(fontSize: 30)),
                ),
                Container(
                  color: Colors.amber,
                  child: Text("Noturno", style: TextStyle(fontSize: 30)),
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: Icon(Icons.gamepad),
      ),
    );
  }
}
