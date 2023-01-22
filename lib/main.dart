import 'package:flutter/material.dart';
import 'package:proyecto_digilist/screens/carrito.dart';
import 'package:proyecto_digilist/screens/catalogo.dart';
import 'package:proyecto_digilist/screens/envio.dart';
import 'package:proyecto_digilist/screens/favoritos.dart';
import 'package:proyecto_digilist/screens/historial.dart';
import 'package:proyecto_digilist/screens/login_screen.dart';
import 'package:proyecto_digilist/screens/Home.dart';
import 'package:proyecto_digilist/screens/pago.dart';
import 'package:proyecto_digilist/screens/perfil.dart';
import 'package:proyecto_digilist/screens/ticket.dart';
import 'package:proyecto_digilist/screens/vistaProducto.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Login UI',
      // debugShowCheckedModeBanner: false,
      // home: LoginScreen(),
      initialRoute: '/',
      routes: {
        '/': (context) =>  Home(),
      '/login': (context) =>  LoginScreen(),
      '/carrito': (context) =>  Carrito_Compra(),
      '/catalogo': (context) =>  Catalogo(),
      '/favoritos': (context) =>  Favoritos(),
      '/historial': (context) =>  Historial(),
      '/pago': (context) =>  Pago(),
      '/perfil': (context) =>  Perfil(),
      '/ticket': (context) =>  Ticket(),
      '/vista_Producto': (context) =>  Vista_Producto(),
      '/envio': (context) =>  Envio(),
      },
    );
  }
}