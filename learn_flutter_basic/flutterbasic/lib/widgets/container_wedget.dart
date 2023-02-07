import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ContainerWedget extends StatefulWidget {
  const ContainerWedget({super.key});

  @override
  State<ContainerWedget> createState() => _ContainerWedgetState();
}

class _ContainerWedgetState extends State<ContainerWedget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("container")),
      body: Container(
        /// ສ້າງໃຫ້ຢູ່ເຄີງກາງ
        alignment: Alignment.topCenter,

        /// ຕັ້ງຄ່າ padding ຂອງ container ໃຫ້ເປັນ 10px ຂອງທຸກໆດ້ານ.
        padding: EdgeInsets.all(10), //padding ຄື ຄອບຂອງbox ທີ່ຢູ່ດ້ານໃນ

        /// Setting the margin of the container to 50px on the horizontal and vertical.
        margin: EdgeInsets.symmetric(horizontal: 50, vertical: 50),

        /// Moving the container 100px to the right and 100px down.
        transform: Matrix4.translationValues(100, 100, 0),

        /// Setting the height and width of the container.
        height: 300,
        width: 300,
        child: Text(
          "container",

          /// Setting the style of the text.
          style: TextStyle(
              color: Colors.white, fontSize: 28, fontWeight: FontWeight.bold),
        ),

        decoration: BoxDecoration(
          color: Colors.green,

          /// Setting the border of the container to 2px black.
          border: Border.all(
            width: 2,
            color: Colors.blue,
          ),

          /// Setting the border radius of the container to 20.
          borderRadius: BorderRadius.all(Radius.circular(20)),
        ),
      ),
      
    );
  }
}
