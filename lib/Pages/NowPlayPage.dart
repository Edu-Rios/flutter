import 'package:flutter/material.dart';
import 'package:trabflutter/Widgets/ListViewAndGridView/MyContainer.dart';
import 'package:trabflutter/Widgets/MultiChild/MyColum.dart';
import 'package:trabflutter/Widgets/MultiChild/MyStack.dart';

class Nowplaypage extends StatefulWidget {
  const Nowplaypage({super.key});

  @override
  State<Nowplaypage> createState() => NowplaypageState();
}

class NowplaypageState extends State<Nowplaypage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Now Playing")),
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            child: const Text("Go Back"),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Mycontainer()),
              ); // ✅ Regresa a la pantalla anterior
            },
          ),
        ),
      ),
    );
  }
}
