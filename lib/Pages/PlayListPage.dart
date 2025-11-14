import 'package:flutter/material.dart';
import 'package:trabflutter/Common/MyKeys.dart';
import 'package:trabflutter/Pages/MyListView.dart';
import 'package:trabflutter/Pages/NowPlayPage.dart';
import 'package:trabflutter/Widgets/ListViewAndGridView/MyContainer.dart';
import 'package:trabflutter/Widgets/MultiChild/MyCard.dart';
import 'package:trabflutter/Widgets/form/MyForm.dart';
import 'package:trabflutter/Widgets/form/MyRadio.dart';
import 'package:trabflutter/Widgets/form/MySwitch.dart';
import 'package:trabflutter/Widgets/form/MyTextField.dart';
import 'package:trabflutter/Widgets/form/ShowDatePicker.dart';
import 'package:trabflutter/model/Sound.dart';
import 'package:trabflutter/Widgets/form/CheckBox.dart';
import 'package:trabflutter/Widgets/form/DropdownButton.dart';

// Cambiamos a StatefulWidget
class PlaylistPage extends StatefulWidget {
  @override
  State<PlaylistPage> createState() => PlaylistPageState();
}

class PlaylistPageState extends State<PlaylistPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed:
            () => myListViewKey.currentState?.add(
              Sound(title: "Blinding Lights", author: "The Weeknd"),
            ),
        child: Icon(Icons.add),
      ),
      body: SafeArea(
        child: MyForm(),
        /* Center(
          child: ElevatedButton(
            child: Text('Playlist Page'),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Nowplaypage()),
              );
            },
          ),
        ),
        */
      ),
    );
  }
}
