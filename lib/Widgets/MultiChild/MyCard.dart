import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mycard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: () {
        print("OnTap");
      },
      onLongPress: () {
        print("OnLongPress");
      },
      onTapDown: (TapDownDetails) {
        print("OnCuando el usuario presiona la pantalla");
      },
      onTapUp: (TapUpDetails downDetailes) {
        print(
          "OnTapUp  cuando el usuario deja de presionar la pantalla ${downDetailes.localPosition}",
        );
      },

      child: Card(
        margin: EdgeInsets.all(30),
        elevation: 10,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: Colors.red, width: 10),
        ),
        shadowColor: Colors.blue,
        child: Text("Hola mundo", style: TextStyle(fontSize: 40)),
      ),
    );
  }
}
