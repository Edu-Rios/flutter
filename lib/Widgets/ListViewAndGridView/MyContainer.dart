import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Mycontainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return InkWell(
      onTap: () {
        print("OnTap");
      },
      onLongPress: () {
        print("OnTAP2");
      },
      child: Container(
        //color: Colors.blue,
        width: 200,
        height: 200,
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
        padding: EdgeInsets.only(top: 60),

        child: Text("Hola mundo"),
        decoration: BoxDecoration(
          color: Colors.green,
          //borderRadius: BorderRadius.circular(10),
          //borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
          border: Border.all(color: Colors.black, width: 20),
          shape: BoxShape.circle,
          boxShadow: [BoxShadow(color: Colors.red, offset: Offset(4, 8))],

          gradient: LinearGradient(
            colors: [Colors.pink, Colors.blue],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/aspectos.jpg'),
          ),
        ),
      ),
    );
  }
}
