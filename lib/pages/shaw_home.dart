import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shawn_app/models/usuario.dart';
import 'package:shawn_app/routes/app_routes.dart';

class ShawHome extends StatefulWidget {
  const ShawHome({super.key});

  @override
  State<ShawHome> createState() => _ShawHomeState();
}

class _ShawHomeState extends State<ShawHome> {
  final auth = FirebaseAuth.instance;

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
    var argumentos = ModalRoute.of(context)!.settings.arguments as Usuario;

    return Scaffold(
      appBar: AppBar(
        title: Text("ShawApp", style: GoogleFonts.acme()),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
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
                child: Text(argumentos.nome, style: TextStyle(fontSize: 30)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                color: Colors.amber,
                child: Text(
                  "${argumentos.idade}",
                  style: TextStyle(fontSize: 30),
                ),
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
          auth.signOut();
          Navigator.pushNamed(context, AppRoutes.login);
        },
        child: Icon(Icons.gamepad),
      ),
    );
  }
}
