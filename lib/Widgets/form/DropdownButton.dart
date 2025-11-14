import 'package:flutter/material.dart';

class MyDropdownbutton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => DropdownButtonState();
}

class DropdownButtonState extends State<MyDropdownbutton> {
  // CORRECCIÓN 1: Se quitó el '@override' de aquí.
  String currentValue = "";
  List<String> courses = ["Flutter", "Dart", "Android", "Ios"];
  List<bool> isChecked = [];

  @override
  void initState() {
    super.initState();
    currentValue = courses[0];
    isChecked = List<bool>.filled(courses.length, false);
  }

  @override // CORRECCIÓN 2: Se agregó el '@override' que faltaba aquí.
  Widget build(BuildContext context) {
    return DropdownButton(
      value: currentValue,
      dropdownColor: Colors.amberAccent,
      onChanged: (String? value) {
        if (value != null && currentValue != value) {
          setState(() {
            this.currentValue = value;
          });
        }
      },
      items:
          courses
              .map(
                (String course) =>
                    DropdownMenuItem(value: course, child: Text(course)),
              )
              .toList(),
    );
  }

  // CORRECCIÓN 3: Este método no se usa, así que se puede borrar
  // para evitar confusiones.
  /*
name: onChanged
  onChanged(value) {
    setState(() {
      this.currentValue = value.toString();
    });
  }
  */
}
