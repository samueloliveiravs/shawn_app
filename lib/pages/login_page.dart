import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formState = GlobalKey<FormState>();

  void _login() {
    if (_formState.currentState!.validate()) {}
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Scaffold(
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
            decoration: BoxDecoration(
              color: Colors.red,
              image: DecorationImage(
                image: NetworkImage(
                  "https://www.somosicev.com/wp-content/uploads/2022/11/FACHADA.jpg",
                ),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 219, 219, 219),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(20),
                    height: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: NetworkImage(
                          "https://upload.wikimedia.org/wikipedia/commons/thumb/2/24/LEGO_logo.svg/960px-LEGO_logo.svg.png",
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "Sign In",
                    style: TextStyle(fontSize: 30),
                    textAlign: TextAlign.start,
                  ),
                  Form(
                    key: _formState,
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Email",
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.email),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "O campo de email não pode ser vazio!";
                              }

                              if (value.length < 4) {
                                return "Caracteres insuficientes";
                              }

                              if (!value.contains("@")) {
                                return "Email inválido";
                              }

                              return null;
                            },
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            vertical: 10,
                            horizontal: 20,
                          ),
                          child: TextFormField(
                            decoration: InputDecoration(
                              labelText: "Senha",
                              filled: true,
                              hoverColor: Colors.blueAccent,
                              border: OutlineInputBorder(),
                              prefixIcon: Icon(Icons.lock),
                            ),
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return "O campo não pode ficar vazio";
                              }

                              if (value.length < 6) {
                                return "Senha muito curta";
                              }

                              return null;
                            },
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.all(20),
                          child: ElevatedButton(
                            onPressed: _login,

                            style: ElevatedButton.styleFrom(
                              backgroundColor: const Color.fromARGB(
                                255,
                                0,
                                3,
                                52,
                              ),
                              foregroundColor: Colors.white,
                              minimumSize: Size(double.infinity, 40),
                              shape: BeveledRectangleBorder(),
                            ),
                            child: Text("Acessar"),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.grey,
            child: Icon(Icons.question_mark_outlined),
          ),
        ),
      ),
    );
  }
}
