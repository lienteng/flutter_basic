import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class StackWidget extends StatefulWidget {
  const StackWidget({super.key});

  @override
  State<StackWidget> createState() => _StackWidgetState();
}

class _StackWidgetState extends State<StackWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Stack"),
      ),
      body: SafeArea(
          child: Center(
        child: _stack(),
      )),
    );
  }

  Widget _stack() {
    return Container(
      width: 300,
      height: 400,
      color: Colors.black,
      // Stack widget ຊ້ອນກັນ
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: <Widget>[
          // Align ຕັ້ງຄ່າໃຫ້ຢຼ່ ຊ້າຍ ຂວາ ເທິງ ລຸ່ມ ກາງ
          Align(
            alignment: Alignment.topRight,
            child: Container(
              width: 200,
              height: 200,
              color: Colors.red,
            ),
          ),
          // Positioned ຕັ້ງຄ່າຂະໜາດ Container ດ້ານໃນຂອບໜ້າໃຫ້ຢຼ່ ຊ້າຍ ຂວາ ເທິງ ລຸ່ມ
          Positioned(
            bottom: 80,
            top: 90,
            right: 20,
            left: 15,
            child: Container(
              // width: 90,
              // height: 90,
              color: Colors.teal,
            ),
          ),

          Container(
            width: 100,
            height: 100,
            color: Colors.blue,
          ),
          Container(
            width: 50,
            height: 50,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}

