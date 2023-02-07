import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class WrapWidget extends StatefulWidget {
  const WrapWidget({super.key});

  @override
  State<WrapWidget> createState() => _WrapWidgetState();
}

class _WrapWidgetState extends State<WrapWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("wrap")),
      body: SafeArea(

          /// `Wrap` is a widget that displays its children in multiple horizontal or vertical runs.
          // `Wrap` ເປນ widget ທີ່ສະແດງບໍ່ໃຫ້ມີ error ເມື່ອມີຂໍ້ມູນເຕັ້ມໜ້າຈໍ ໃນ multiple ລວງຕັ້ງ ຫຼື ລວງນອນ ເພື່ອບໍ່ໃຫ້ widget ທີ່ຢູ່ດ້ານໃນ error
          child: Wrap(
        spacing: 8.0,
        runSpacing: 4.0,
        children: [
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text("Aa"),
            ),
            label: const Text("Data from Aa"),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text("Aa"),
            ),
            label: const Text("Data from Aa"),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text("Aa"),
            ),
            label: const Text("Data from Aa"),
          ),
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.orange,
              child: Text("Aa"),
            ),
            label: const Text("Data from Aa"),
          ),
        ],
      )),
    );
  }
}
