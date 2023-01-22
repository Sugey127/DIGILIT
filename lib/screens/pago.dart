import 'package:flutter/material.dart';

class Pago extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola soy Pago'),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/ticket'); },
                child: const Text('Ticket'),
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

