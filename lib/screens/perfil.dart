import 'package:flutter/material.dart';

class Perfil extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola soy Perfil'),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/'); },
                child: const Text('Cerrar sesión'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/carrito'); },
                child: const Text('Carrito'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/favoritos'); },
                child: const Text('Favorito'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/historial'); },
                child: const Text('Historial'),
            ),
        ],
    ),
),
    );
  }
}

