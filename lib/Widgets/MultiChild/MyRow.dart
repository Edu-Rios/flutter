import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          children: [
            Text("Hola Mundo", style: TextStyle(fontSize: 30)),
            Text("Hola Mundo", style: TextStyle(fontSize: 30)),
            Text("Hola Mundo", style: TextStyle(fontSize: 30)),
          ],
        ),
        Text("Adios Mundo", style: TextStyle(fontSize: 30)),
        Text("Adios Mundo", style: TextStyle(fontSize: 30)),
        Text("Adios Mundo", style: TextStyle(fontSize: 30)),
      ],
    );
  }
}
