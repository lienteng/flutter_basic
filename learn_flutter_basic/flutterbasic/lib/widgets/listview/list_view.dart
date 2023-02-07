import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutterbasic/widgets/listview/listviewbuilder.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}

class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("ListView")),
      body: SafeArea(
        child: Container(
          color: Colors.red,
          child: ListView(
            // reverse: true, //ສະຫຼັບເອົາລຸ່ມຂຶ້ນເທິງ
            physics: const NeverScrollableScrollPhysics(),
            padding: const EdgeInsets.all(20),
            // `shrinkWrap` is a property of `ListView` that tells the list to size itself to the amount of space it occupies.

            // shrinkWrap: true,
            
            // scrollDirection: Axis.horizontal, //ເຮັດເປັນແນວຕັ້ງ
            scrollDirection: Axis.vertical, //ເຮັດເປັນແນວນອນ
            children: [
              Container(
                color: Colors.orange,
                height: 100,
                width: 50,
              ),
              Container(
                color: Colors.blue,
                height: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
              ),
              Container(
                color: Colors.orange,
                height: 100,
                width: 50,
              ),
              Container(
                color: Colors.blue,
                height: 100,
              ),
              Container(
                color: Colors.green,
                height: 100,
              ),
              Container(
                color: Colors.orange,
                height: 100,
                width: 50,
              ),
              Container(
                color: Colors.blue,
                height: 100,
              ),
             
            ],
          ),
        ),
      ),
    );
  }
}
