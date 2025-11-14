import 'package:flutter/material.dart';

class MyStack extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      fit: StackFit.expand,
      children: [
        Image.asset('assets/images/aspectos.jpg'),

        Icon(Icons.close, color: Colors.red, size: 40),
        /*
        Positioned(
          right: 10,
          bottom: 10,
          child: Icon(Icons.close, color: Colors.red, size: 50),
        ),*/
      ],
    );
  }
}
