import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ExpandedWidget extends StatefulWidget {
  const ExpandedWidget({super.key});

  @override
  State<ExpandedWidget> createState() => _ExpandedWidgetState();
}

class _ExpandedWidgetState extends State<ExpandedWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(title: const Text("GridView")),
      body: Row(
        children: <Widget>[
          // Expanded ຄື ຕົວປັບຂະໜາດໃຫ້ໄດ້ເຕັມໜ້າຈໍ້ໃນແອັບໃຫ້ເຮົາ ໂດຍບໍ່ໃຫ້ມີສ່ວນທີ່ເຫຼືອ
          Expanded(
            flex: 40, //ຕົວກຳນົດຂະໜາດຕາມກວ້າງ ຍາວ ໃນ container
            child: Container(
              padding: EdgeInsets.all(20), //ກຳນົດຂະໜາດດ້ານໃນ
              margin: EdgeInsets.all(10), //ກຳນົດຂະໜາດດ້ານນອກ
              color: Colors.cyan,
              child: Container(
                padding: EdgeInsets.all(20),
                // margin: EdgeInsets.all(30),
                color: Colors.red,
                child: Text("red"),
              ),
            ),
          ),

          Expanded(
            flex: 30,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.green,
              child: Text("green"),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Expanded(
            flex: 30,
            child: Container(
              padding: EdgeInsets.all(30),
              color: Colors.orange,
              child: Text("orange"),
            ),
          ),
        ],
      ),
    );
  }
}
