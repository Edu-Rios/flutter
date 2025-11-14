import 'package:flutter/material.dart';

class PracticaMyimage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Image(
        image: AssetImage('assets/images/logo.png'),
        //image: NetworkImage('https://example.com/image.jpg'),
        width: 800,
        height: 800,
        fit: BoxFit.fill,
        errorBuilder: (
          BuildContext context,
          Object error,
          StackTrace? atackTrace,
        ) {
          return Image.asset("name");
        },
      ),
    );
  }
}
