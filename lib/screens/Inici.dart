import 'package:flutter/material.dart';
import 'package:proyecto_digilist/screens/notificaciones.dart';
import 'package:proyecto_digilist/screens/perfil.dart';
import 'package:proyecto_digilist/screens/login_screen.dart';

void main() => runApp(Inicio_page());

class Inicio_page extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
                      onTap: () => null,
                    ),
                    ListTile(
                      leading: Icon(Icons.people),
                      title: Text('Perfil'),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>perfil()));
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.share),
                      title: Text('Compartir'),
                      onTap: () => null,
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text('Notificaciones'),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>notificaciones()));
                      },
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.settings),
                      title: Text('Configuraciones'),
                      onTap: () => null,
                    ),
                    ListTile(
                      leading: Icon(Icons.description),
                      title: Text('Politicas'),
                      onTap: () => null,
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.exit_to_app),
                      title: Text('Salir'),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));
                      }
                      
                      
                    ),
                  ],
                ),
              ),
            ),
            appBar: AppBar(
              title: const Text('Drawer'),
            ),
            body: const Center(
              child: Text('hola mundo 2'),
            )));
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