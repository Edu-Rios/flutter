import 'package:flutter/material.dart';

class PracticaMyAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  PracticaMyAppBar(String? title, {Key? key})
    : title = title ?? "My Home",
      super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(this.title),
      backgroundColor: const Color.fromARGB(255, 255, 251, 132),
      elevation: 20,
      shadowColor: const Color.fromARGB(255, 150, 150, 150),
      centerTitle: true,
      //leading: Icon(Icons.arrow_back, color: Colors.black),
      actions: [
        Icon(Icons.search, color: Colors.black),
        Icon(Icons.more_vert, color: Colors.black),
        //Icon(Icons.search, color: Colors.white),
        PopupMenuButton(
          color: Colors.white,
          elevation: 20,
          shape: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.blue, width: 2),
          ),

          itemBuilder:
              (context) => [
                PopupMenuItem(child: Text("Compartir")),
                PopupMenuItem(child: Text("Obtener link")),
              ],
        ),
      ],
      toolbarHeight: 90,
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
