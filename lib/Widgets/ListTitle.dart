import 'package:flutter/material.dart';

class ListTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Hola mundo"),
      subtitle: Text("Dart"),
      trailing: Icon(Icons.more_vert),
      leading: Icon(Icons.chrome_reader_mode),
      onTap: () {
        print("ListTile");
      },
      onLongPress: () {
        print("List");
      },
    );
  }
}
