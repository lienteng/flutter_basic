import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class TimePickerWidget extends StatefulWidget {
  const TimePickerWidget({super.key});

  @override
  State<TimePickerWidget> createState() => _TimePickerWidgetState();
}

class _TimePickerWidgetState extends State<TimePickerWidget> {
  var selecedTime;
  @override
  void initState() {
    super.initState();

    selecedTime = TimeOfDay(hour: 23, minute: 30);
  }

  _selectTime(BuildContext context) async {
    final TimeOfDay? Picked = await showTimePicker(
      context: context,
      initialTime: selecedTime,
    );
    if (Picked != null && Picked != selecedTime)
      setState(() {
        selecedTime = Picked;
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
            Text('${selecedTime.hour}h : ${selecedTime.minute}m'),
            ElevatedButton(
                onPressed: () {
                  _selectTime(context);
                },
                child: Text("click"))
          ],
        ),
      ),
    );
  }
}
