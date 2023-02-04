import 'package:flutter/material.dart';
import 'package:proyecto_digilist/screens/perfil.dart';
import 'package:proyecto_digilist/screens/politicas.dart';

import 'carrito.dart';
import 'catalago.dart';
import 'categoriesWidget.dart';
import 'configuraciones.dart';

import 'itemsWidget.dart';
import 'login_screen.dart';
import 'notificaciones.dart';
//inicio
void main() => runApp(Inicio_page());

class Inicio_page extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        //title: 'material app',
        home: Scaffold(
            drawer: Drawer(
        child: Container(
          color: Color.fromARGB(255, 255, 237, 212),
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Andrea_Rodriguez.com"),
                accountEmail: Text("Andrea@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  child: ClipOval(
                    child: Image.network(
                      "https://pbs.twimg.com/profile_images/1214740235336200197/vo2eRdio_400x400.jpg",
                      width: 90,
                      height: 90,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 157, 28),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: NetworkImage(
                        'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg'),
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text('Inicio'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Inicio_page()));
                },
              ),
              ListTile(
                leading: Icon(Icons.people),
                title: Text('Perfil'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => perfil()));
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.book),
                title: Text('Catalago'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => catalago()));
                },
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text('Notificaciones'),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => notificaciones()));
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Configuraciones'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => configuraciones()));
                },
              ),
              ListTile(
                leading: Icon(Icons.description),
                title: Text('Politicas'),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => politicas()));
                },
              ),
              Divider(),
              ListTile(
                  leading: Icon(Icons.exit_to_app),
                  title: Text('Salir'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => LoginScreen()));
                  }),
              ListTile(
                  leading: Icon(Icons.shop),
                  title: Text('Carrito'),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => carrito()));
                  }),
            ],
          ),
        ),
      ),
            appBar: AppBar(
              title: const Text('Inicio'),
            ),
             body: ListView(
              children: [
               Container(
                margin: EdgeInsets.symmetric(horizontal: 15),
                padding: EdgeInsets.symmetric(horizontal: 15),
                height: 50,
                decoration:  BoxDecoration(
                  color: Color(0xFFEDECF2),
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 5),
                      height: 200,
                      width: 400,
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: " Search here .............",
                        ),
                      ),
                    ),
                    Icon(
                      Icons.camera_alt,
                      size: 27,
                      color: Color(0xFF4C53A5),
                    ),
                  ],
                ),
               ),
               Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(
                  vertical: 20,
                  horizontal: 10,
                ),
                child: Text(
                  "Categorias",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
               ),

               categoriesWidget(),

               Container(
                alignment: Alignment.centerLeft,
                margin: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF4C53A5),
                  ),
                ),
               ),

               itemsWidget(),
              ],
            ),
           )
      );
  }
}

/*  children: [
                Container(
                  width: 100,
                  height: 100,
                  margin: const EdgeInsets.only(top: 50, bottom: 20),
                  child: Image.network("https://p77-sign-va.tiktokcdn.com/tos-maliva-avt-0068/603870422660542ae36b253bdf7af03b~c5_720x720.jpeg?x-expires=1674774000&x-signature=AQZPi7LQBTLCl7qbBaCbKhhYwQM%3D"),
                ),
                const Text("Andrea Rodriguez", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),)
              ],
            */