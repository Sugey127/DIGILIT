import 'package:flutter/material.dart';
import 'login_screen.dart';

void main() => runApp(MaterialApp(
  home:perfil(),
));

class perfil extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.share),
                      title: Text('Compartir'),
                      onTap: () => null,
                    ),
                    ListTile(
                      leading: Icon(Icons.notifications),
                      title: Text('Notificaciones'),
                      onTap: () => null,
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
              title: const Text('Perfil'),
            ),
      body: Column(
        children: <Widget>[
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromARGB(255, 255, 102, 0), Color.fromARGB(255, 255, 230, 0)]
              )
            ),
            child: Container(
              width: double.infinity,
              height: 250.0,
              child: Center(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    CircleAvatar(
                      backgroundImage: NetworkImage(
                        "https://pbs.twimg.com/profile_images/1214740235336200197/vo2eRdio_400x400.jpg",
                      ),
                      radius: 50.0,
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                    Text(
                      "Andrea_Rodriguez",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      height: 10.0,
                    ),
                   
                  ],
                ),
              ),
            )
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0,horizontal: 16.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                      "Bio:",
                    style: TextStyle(
                      color: Color.fromARGB(255, 254, 119, 0),
                      fontStyle: FontStyle.normal,
                      fontSize: 28.0
                    ),
                  ),
                  SizedBox(
                    height: 10.0,
                  ),
                  Text('Hola mi nombre es Andrea Rodriguez\n'
                      'Me gusta mucho conseguir diferentes tipos de refacciones para mi automovil con la facilidad de encontrar todo de una forma rapida',
                    style: TextStyle(
                      fontSize: 22.0,
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w300,
                      color: Colors.black,
                      letterSpacing: 2.0,
                    ),
                  ),
                  Divider(),
                    ListTile(
                      leading: Icon(Icons.camera_front),
                      title: Text('Numero_Telefonico: 9992345476'),
                      onTap: () => null,
                    ),
                  Divider(),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            width: 300.00,

            child: RaisedButton(
              onPressed: (){},
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(80.0)
              ),
              elevation: 0.0,
                padding: EdgeInsets.all(0.0),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.centerRight,
                    end: Alignment.centerLeft,
                    colors: [Color.fromARGB(255, 255, 157, 0),Colors.pinkAccent]
                  ),
                  borderRadius: BorderRadius.circular(30.0),
                ),
                child: Container(
                  constraints: BoxConstraints(maxWidth: 300.0, minHeight: 50.0),
                  alignment: Alignment.center,
                  child: Text("Contact me",
                  style: TextStyle(color: Colors.white, fontSize: 26.0, fontWeight:FontWeight.w300),
                  ),
                ),
              )
            ),
          ),
        ],
      ),
    );
  }
  
  RaisedButton({required Null Function() onPressed, required RoundedRectangleBorder shape, required double elevation, required EdgeInsets padding, required Ink child}) {}
  
}

