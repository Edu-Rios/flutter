import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trabflutter/Pages/loginPage.dart';
import 'package:trabflutter/Pages/practica/practicaAppBar.dart';
import 'package:trabflutter/Pages/practica/practicaimage.dart';
import 'package:trabflutter/Widgets/MyAppBar.dart';
import 'package:trabflutter/Widgets/MyButtons.dart';
import 'package:trabflutter/Widgets/MyFloatingActionButton.dart';
import 'package:trabflutter/Widgets/Myimage.dart';

import '../Widgets/MyText.dart';
import '../Widgets/MyTextAlt.dart';
import '../Widgets/MyRichText.dart';

class HomeEdu extends StatefulWidget {
  const HomeEdu({super.key, required this.title});

  final String title;

  @override
  State<HomeEdu> createState() => HomeEduState();
}

class HomeEduState extends State<HomeEdu> {
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as String? ?? "Cammpeaon";
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: MyFloatingActionButton(),
      appBar: PracticaMyAppBar(args),
      body: SafeArea(
        child: PracticaMyimage(),
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
