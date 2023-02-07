import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CardWidget extends StatefulWidget {
  const CardWidget({super.key});

  @override
  State<CardWidget> createState() => _CardWidgetState();
}

class _CardWidgetState extends State<CardWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("card")),
      body: SafeArea(
        child: Card(
          // elevation ເສັ້ນເງົາທີ່ຢູ່ດ້ານລຸ່ມ
          elevation: 5,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const ListTile(
                title: Text(" data in card"),
                leading: Icon(Icons.person_2_outlined),
                subtitle: Text("this widget to show the data in card"),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  TextButton(onPressed: () {}, child: Text("cancel")),
                  TextButton(onPressed: () {}, child: Text("okay")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
