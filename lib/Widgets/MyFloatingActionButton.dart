import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatelessWidget {
  // VoidCallback voidCallback;
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () {
        print("FloatingActionButton");
      },
      icon: Icon(Icons.add, size: 20),
      label: Text("Agregar"),
      backgroundColor: Colors.yellow,
      elevation: 20,
      tooltip: "Agregar Usuario",
    );

    //sin texto
    /*
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        print("FloatingActionButton");
      },
      child: Icon(Icons.add, size: 20),
      backgroundColor: Colors.yellow,
      elevation: 90,
      tooltip: "Agregar Usuario",
    );
*/
  }
}
