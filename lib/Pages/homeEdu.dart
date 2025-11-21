import 'dart:math';

import 'package:flutter/material.dart';
import 'package:trabflutter/Pages/loginPage.dart';
import 'package:trabflutter/Pages/practica/practicaAppBar.dart';
import 'package:trabflutter/Pages/practica/practicaimage.dart';
import 'package:trabflutter/Widgets/Menu/Fragmets/MyHome.dart';
import 'package:trabflutter/Widgets/Menu/Fragmets/MyProfile.dart';
import 'package:trabflutter/Widgets/Menu/Fragmets/MySettings.dart';
import 'package:trabflutter/Widgets/Menu/MyBottomNavegatorBar.dart';
import 'package:trabflutter/Widgets/Menu/MyDrawer.dart';
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
  List fragments = [MyHome(), MyProfile(), MySettings()];
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as String? ?? "Cammpeaon";
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      floatingActionButton: MyFloatingActionButton(),
      appBar: PracticaMyAppBar(args),
      drawer: Mydrawer(),
      bottomNavigationBar: MyBottomNavegationBar(onTap, currentIndex),
      body: fragments[currentIndex],
      /* SafeArea(
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
      ),*/
    );
  }

  onTap(int index) {
    setState(() {
      this.currentIndex = index;
    });
  }

  bottonSheet() {
    showBottomSheet(
      context: context,
      builder: (builder) {
        return Column(
          children: [
            ListTile(leading: Icon(Icons.share), title: Text("Compartir")),
            ListTile(leading: Icon(Icons.link), title: Text("Copiar link")),
            ListTile(leading: Icon(Icons.send), title: Text("Enviar")),
          ],
        );
      },
    );
  }
}
