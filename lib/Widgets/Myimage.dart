import 'package:flutter/material.dart';

class Myimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('assets/images/aspectos.jpg'),
      //image: NetworkImage('https://example.com/image.jpg'),
      width: 100,
      height: 100,
      fit: BoxFit.fill,
      errorBuilder: (
        BuildContext context,
        Object error,
        StackTrace? atackTrace,
      ) {
        return Image.asset("name");
      },
    );
  }
}
