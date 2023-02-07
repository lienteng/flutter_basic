import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DatePickerWidget extends StatefulWidget {
  const DatePickerWidget({super.key});

  @override
  State<DatePickerWidget> createState() => _DatePickerWidgetState();
}

class _DatePickerWidgetState extends State<DatePickerWidget> {
  var selectDate;
  @override
  void initState() {
    super.initState();
    selectDate = DateTime.now();
  }

  _selectDate(BuildContext context) async {
    final DateTime? Picked = await showDatePicker(
        context: context,
        initialDate: selectDate,
        firstDate: DateTime(1990),
        lastDate: DateTime(2999));
    if (Picked != null && Picked != selectDate)
      setState(() {
        selectDate = Picked;
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("datetime"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${DateFormat('yyyy/MM/dd').format(selectDate)}'),
            ElevatedButton(
                onPressed: () {
                  _selectDate(context);
                },
                child: Text("click"))
          ],
        ),
      ),
    );
  }
}
