import 'package:flutter/material.dart';

class MyCheckBox extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MyCheckBoxState();
}

class MyCheckBoxState extends State<MyCheckBox> {
  @override
  String currentValue = "";
  List<String> courses = ["Flutter", "Dart", "Android", "Ios"];
  List<bool> isCheck = [];
  @override
  void initState() {
    isCheck = List<bool>.filled(courses.length, false);
  }

  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(isCheck.toString()),
        ListView.builder(
          shrinkWrap: true,
          itemCount: courses.length,
          itemBuilder: (context, index) {
            return CheckboxListTile(
              title: Text(courses[index]),
              value: isCheck[index],
              onChanged: (value) {
                setState(() {
                  isCheck[index] = value as bool;
                });
              },
            );
          },
        ),
      ],
    );
  }
}
