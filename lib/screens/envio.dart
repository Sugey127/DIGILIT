import 'package:flutter/material.dart';

class Envio extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola soy Envio'),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/pago'); },
                child: const Text('Pago'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/'); },
                child: const Text('Home'),
            ),  
        ],
    ),
),
    );
  }
}