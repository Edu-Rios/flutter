import 'package:flutter/material.dart';

class MyRichTextAlt extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: "¿No tienes cuenta?",
        style: TextStyle(
          color: Colors.blueGrey[800],
          fontSize: 24,
          fontStyle: FontStyle.italic,
        ),
        children: [
          TextSpan(
            text: " Regístrate ahora",
            style: TextStyle(
              color: Colors.orangeAccent,
              fontWeight: FontWeight.w700,
              decoration: TextDecoration.overline,
              fontSize: 26,
              letterSpacing: 0.5,
            ),
          ),
          TextSpan(
            text: " — es rápido y gratis",
            style: TextStyle(
              color: Colors.green[700],
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
