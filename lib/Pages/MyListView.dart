import 'package:flutter/material.dart';
import 'package:trabflutter/Common/MyKeys.dart';
import 'package:trabflutter/model/Sound.dart';
import 'package:trabflutter/Widgets/MyListTile.dart';

class MyListView extends StatefulWidget {
  MyListView() : super(key: myListViewKey);
  @override
  State<StatefulWidget> createState() => MyListViewState();
}

class MyListViewState extends State<MyListView> {
  List<Sound> mysounds = [];

  @override
  void initState() {
    super.initState();
    this.mysounds = sounds;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.amber,
      child: ListView.builder(
        shrinkWrap: true,
        reverse: true,
        itemCount: sounds.length,
        itemBuilder: (context, index) {
          Sound sound = sounds[index];
          return Dismissible(
            direction: DismissDirection.endToStart,
            key: ObjectKey(sound),
            child: MyListTile(sound, index, remove),
            onDismissed: (direction) {
              mysounds.remove(sound);
            },
          );
        },
      ),
    );
  }

  remove(Sound sound) {
    setState(() {
      mysounds.remove(sound);
    });
  }

  update(Sound sound, int index) {
    setState(() {
      mysounds[index] = sound;
    });
  }

  add(Sound sound) {
    setState(() {
      mysounds.add(sound);
    });
  }
}
