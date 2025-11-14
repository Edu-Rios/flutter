import 'package:flutter/material.dart';

class MyRadio extends StatefulWidget {
  State<StatefulWidget> createState() => MyRadioState();
}

class MyRadioState extends State<MyRadio> {
  String currentValue = "";
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RadioListTile(
          value: "Radio1",
          title: Text("Soltero"),
          groupValue: currentValue,
          onChanged: (value) {
            onChanged(value);
          },
        ),
        RadioListTile(
          value: "Radio2",
          title: Text("Casado"),
          groupValue: currentValue,
          onChanged: (value) {
            onChanged(value);
          },
        ),
        Text(currentValue),
      ],
    );
  }

  onChanged(value) {
    setState(() {
      this.currentValue = value.toString();
    });
  }
}
