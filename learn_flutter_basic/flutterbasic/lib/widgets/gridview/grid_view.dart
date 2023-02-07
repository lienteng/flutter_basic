import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterbasic/homeview.dart';

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("GridView")),
      body: SafeArea(
        child: GridView.count(
          // scrollDirection: Axis.horizontal, //horizontal scroll ເປັນລວງນອນ
          scrollDirection: Axis.vertical, // vertical scroll ເປັນລວງຕັ້ງ
          // scrollDirection: Axis.values,
          crossAxisCount: 2,
          reverse: true, //ສະຫຼັບເອົາລຸ່ມຂຶ້ນເທິງ
          mainAxisSpacing: 10, // ຂະໜາດລະຫວ່າງຂອບຕາມລວງນອນ
          crossAxisSpacing: 10, // ຂະໜາດລະຫວ່າງຂອບຕາມລວງຕັ້ງ
          childAspectRatio: 0.9, //ຂະໜາດປັບ box ເປັນຕົວກວ້າງ ແລະ ຍາວ
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 10),
          children: [
            Expanded(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomeView()),
                  );
                },
                child: Container(
                  color: Colors.amber,
                  child: Text("Home"),
                ),
              ),
            ),
            Container(
              color: Colors.green,
              child: Text("data"),
            ),
            Container(
              color: Colors.blue,
              child: Text("data"),
            ),
            Container(
              color: Colors.red,
              child: Text("data"),
            ),
            Container(
              color: Colors.amber,
              child: Text("data"),
            ),
            Container(
              color: Colors.green,
              child: Text("data"),
            ),
            Container(
              color: Colors.blue,
              child: Text("data"),
            ),
            Container(
              color: Colors.red,
              child: Text("data"),
            ),
          ],
        ),
      ),
    );
  }
}
