import 'package:flutter/material.dart';

void main() => runApp(registro());

class registro extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //title: 'material app',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Registro de cuenta'),
            ),
            body: const Center(
              child: Text('hola mundo 3'),
            )));
  }
}
