import 'package:flutter/material.dart';
import 'Myicon.dart';

class MyRichText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return RichText(
      text: TextSpan(
        text: "Tienes una cuenta?",
        style: TextStyle(color: Colors.black, fontSize: 50),
        children: [
          TextSpan(
            text: " Inicia Sesión",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.underline,
              fontSize: 50,
            ),
          ),
          WidgetSpan(
            alignment: PlaceholderAlignment.middle,
            child: Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Myicon(),
            ),
          ),
        ],
      ),
    );
  }
}
