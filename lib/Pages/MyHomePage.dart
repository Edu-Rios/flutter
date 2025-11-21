import 'package:flutter/material.dart';
import 'package:trabflutter/Pages/loginPage.dart';
import 'package:trabflutter/Pages/practica/practicaAppBar.dart';
import 'package:trabflutter/Pages/practica/practicaimage.dart';
import 'package:trabflutter/Widgets/Menu/MyDrawer.dart';
import 'package:trabflutter/Widgets/MyAppBar.dart';
import 'package:trabflutter/Widgets/MyButtons.dart';
import 'package:trabflutter/Widgets/MyFloatingActionButton.dart';
import 'package:trabflutter/Widgets/Myimage.dart';

import '../Widgets/MyText.dart';
import '../Widgets/MyTextAlt.dart';
import '../Widgets/MyRichText.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      //appBar: PracticaMyAppBar(),
      drawer: Mydrawer(),
      body: SafeArea(
        child: Loginpage(),
        /*
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Mytext(),
              SizedBox(height: 16),
              MyTextAlt(),
              SizedBox(height: 16),
              MyRichText(),
            ],
          ),
        ),*/
      ),
    );
  }
}
