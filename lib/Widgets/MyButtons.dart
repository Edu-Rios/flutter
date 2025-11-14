import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  Widget build(BuildContext context) {
    return myOutlineButton();
  }

  myElevatedButton() {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        shadowColor: Colors.yellow,
        elevation: 10,
      ),
      onLongPress: () {
        print("ElevatedButton onLongPress");
      },
      onPressed: () {
        print("ElevatedButton");
      },
      child: Text("Guerdar"),
    );
  }

  myElevatedButton1() {
    return ElevatedButton.icon(
      icon: Icon(Icons.save, color: Colors.red),
      label: Text("Guardar"),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.white,
        foregroundColor: Colors.blue,
        shadowColor: Colors.yellow,
        elevation: 10,
      ),
      onLongPress: () {
        print("ElevatedButton onLongPress");
      },
      onPressed: () {
        print("ElevatedButton");
      },
    );
  }

  MyTextButton() {
    return TextButton(
      onPressed: () {
        print("TextButton");
      },
      child: Text("Guardar"),
    );
  }

  myOutlineButton() {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        side: BorderSide(color: Colors.black, width: 3),
        backgroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(30)),
        ),
      ),
      onPressed: () {
        print("TextButton");
      },
      child: Text("Guardar"),
    );
  }
}
