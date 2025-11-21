import 'package:flutter/material.dart';
import 'package:trabflutter/Widgets/MyListTile.dart';

typedef VoidCallbackParam(int index);

class MyBottomNavegationBar extends StatelessWidget {
  VoidCallbackParam voidCallbackParam;
  int currentIndex;
  //constructor
  MyBottomNavegationBar(this.voidCallbackParam, this.currentIndex);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return BottomNavigationBar(
      onTap: voidCallbackParam,
      selectedItemColor: Colors.blue,
      iconSize: 30,
      selectedLabelStyle: TextStyle(fontSize: 20),
      backgroundColor: Colors.brown[200],
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Inicio"),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: "Perfil"),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: "Configuracion",
        ),
      ],
    );
  }
}
