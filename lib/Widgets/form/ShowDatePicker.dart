import 'package:flutter/material.dart';

class Showdatepicker extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ShowDatePickerState();
}

class ShowDatePickerState extends State<Showdatepicker> {
  DateTime selectdDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => selectDate(),
      child: Text(selectdDate.toString()),
    );
  }

  selectDate() async {
    DateTime? dateTime = await showDatePicker(
      context: context,
      initialDate: selectdDate,
      firstDate: DateTime(2025),
      lastDate: DateTime(2026),
    );
    if (dateTime != null && dateTime != selectdDate) {
      setState(() {
        this.selectdDate = dateTime;
      });
    }
  }
}
