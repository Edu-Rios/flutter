import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyTextFieldState();
}

class MyTextFieldState extends State<MyTextField> {
  TextEditingController ctrlName = TextEditingController();
  TextEditingController ctrlEdad = TextEditingController();
  String name = "";
  FocusNode node1 = FocusNode();
  FocusNode node2 = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name),

        TextField(
          focusNode: node1,
          controller: ctrlName,
          autofocus: true,
          keyboardType: TextInputType.name,
        ),

        TextField(
          focusNode: node2,
          controller: ctrlEdad,
          //autofocus: true,
          keyboardType: TextInputType.number,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.green),
          maxLength: 5,
          //maxLines: 3,
          //obscureText: true,
          decoration: InputDecoration(
            hintText: "Edad",
            helperStyle: TextStyle(color: Colors.red),
            labelText: "Edad",
            icon: Icon(Icons.favorite),
            prefix: Icon(Icons.favorite),
            enabled: false,
            disabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 8),
              borderRadius: BorderRadius.circular(20),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.red, width: 5),
            ),
          ),
        ),

        ElevatedButton(
          onPressed: () {
            FocusScope.of(context).requestFocus(node2);
            setState(() {
              this.name = ctrlName.text.toString();
            });
          },
          child: Text("Guardar"),
        ),
      ],
    );
  }
}
