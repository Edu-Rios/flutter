import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text("INICIO"),
      backgroundColor: Colors.blueAccent,
      elevation: 30,
      shadowColor: Colors.white,
      centerTitle: true,
      leading: Icon(Icons.arrow_back, color: Colors.white),
      actions: [
        Icon(Icons.search, color: Colors.white),
        Icon(Icons.more_vert, color: Colors.white),
      ],
      toolbarHeight: 100,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
