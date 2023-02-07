import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class DateTimeWidget extends StatefulWidget {
  const DateTimeWidget({super.key});

  @override
  State<DateTimeWidget> createState() => _DateTimeWidgetState();
}

class _DateTimeWidgetState extends State<DateTimeWidget> {
  var dateTime;
  var timeStamp;
  var anotherDateTime;
  var newDateTimes;
  @override
  void initState() {
    dateTime = DateTime.now();
    timeStamp = dateTime.millisecondsSinceEpoch;
    anotherDateTime = DateFormat("yyyy-MM-dd HH:mm:ss").format(dateTime);
    newDateTimes = DateTime.parse(anotherDateTime);
    super.initState();
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
          children: [Text('$newDateTimes')],
        ),
      ),
    );
  }
}

