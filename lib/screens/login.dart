// Implementar login con la validación de datos que se tiene en el archivo services/data.dart

import 'package:flutter/material.dart';
import 'package:parcial3/screens/home.dart';
import 'package:parcial3/services/data.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController sunombre = TextEditingController();
  TextEditingController carnet = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            const SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              child: const Text(
                'Inicio de sesion',
                style: TextStyle(fontSize: 20),
              ),
            ),
            Container(
              padding: const EdgeInsets.all(10),
              child: TextField(
                controller: sunombre,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nombre',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: carnet,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Carnet',
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
              height: 50,
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                child: const Text('Iniciar'),
                onPressed: () {
                  if (sunombre.text == loginData[0].toString() &&
                      carnet.text == loginData[1].toString()) {
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: ((context) => const HomeScreen())));
                  } else {
                    const AlertDialog(
                        semanticLabel: 'Usuario o contraseña incorrecta');
                  }
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
