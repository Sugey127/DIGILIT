import 'package:flutter/material.dart';

void main() => runApp(notificaciones());

class notificaciones extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        //title: 'material app',
        home: Scaffold(
            appBar: AppBar(
              title: const Text('Notificaciones'),
            ),
            body: const Center(
              child: Text('hola mundo 4'),
            )));
  }
}
