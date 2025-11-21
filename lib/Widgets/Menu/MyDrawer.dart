import 'package:flutter/material.dart';

class Mydrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Drawer(
      child: ListView(
        children: [
          UserAccountsDrawerHeader(
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage("assets/images/aspectos.jpg"),
            ),
            //Image.asset("assets/images/aspectos.jpg"),
            accountName: Text("Edu"),
            accountEmail: Text("Edu@gmail"),
          ),
          ListTile(leading: Icon(Icons.home), title: Text("Inicio")),
          ListTile(
            leading: Icon(Icons.engineering),
            title: Text("Configuracion"),
          ),
          ListTile(
            leading: Icon(Icons.playlist_add_check_circle_outlined),
            title: Text("Lista"),
          ),
          Divider(height: 6, color: Colors.amber),
          ListTile(leading: Icon(Icons.close), title: Text("Cerrar Sesion")),
        ],
      ),
    );
  }
}
