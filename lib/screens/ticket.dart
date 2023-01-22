import 'package:flutter/material.dart';

class Ticket extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola soy Ticket'),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/'); },
                child: const Text('Home'),
            ),
             SizedBox(height: 10),
        ],
    ),
),
    );
  }
}

