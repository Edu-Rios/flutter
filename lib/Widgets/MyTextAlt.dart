import 'package:flutter/material.dart';

class MyTextAlt extends StatelessWidget {
  const MyTextAlt({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "¡Hola! Explora tus cursos y recursos disponibles",
      style: TextStyle(
        color: Colors.deepPurple,
        fontSize: 30,
        fontWeight: FontWeight.bold,
        letterSpacing: 1.2,
        wordSpacing: 6,
        shadows: [
          Shadow(color: Colors.black26, offset: Offset(2, 2), blurRadius: 4),
        ],
      ),
      textAlign: TextAlign.left,
      maxLines: 3,
      overflow: TextOverflow.fade,
    );
  }
}
