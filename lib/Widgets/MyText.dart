import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Mytext extends StatelessWidget {
  const Mytext({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      "Bienvenidos estudiantes a la universidad",
      style: TextStyle(
        color: const Color.fromARGB(255, 54, 187, 248),
        fontSize: 25,
        fontWeight: FontWeight.w600,
        letterSpacing: 5,
        wordSpacing: 20,
        decoration: TextDecoration.underline,
      ),
      textAlign: TextAlign.right,
      maxLines: 2,
      softWrap: true,
      overflow: TextOverflow.ellipsis,
    );
  }
}
