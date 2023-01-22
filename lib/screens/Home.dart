import 'package:flutter/material.dart';

class Home extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hola soy Home'),
      ),
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
            ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/login'); },
                child: const Text('login'),
            ),
             SizedBox(height: 10),
            ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/catalogo'); },
                child: const Text('catalogo'),
            ),
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/vista_Producto'); },
                child: const Text('Vista Producto'),
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
            SizedBox(height: 10),
            ElevatedButton(
                onPressed: () { Navigator.pushNamed(context, '/perfil'); },
                child: const Text('Perfil'),
            ),
        ],
    ),
),
    );
  }
}

