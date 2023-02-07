import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterbasic/widgets/image_network.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("elevebutton"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Text("ElevatedButton"),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(

                /// It's a convenience method that creates a `ButtonStyle` from the given properties.
                style: ElevatedButton.styleFrom(
                    // minimumSize  ຂະໜາດນ້ອນສຸດ
                    minimumSize: Size(200, 200),
                    //CircleBorder ສ້າງເປັນຮູບວົງມົນ
                    shape: CircleBorder(
                      side: BorderSide(color: Colors.blue),
                    )),
                onPressed: () {},
                child: Text("ImageNetwork")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
                onPressed: () {},
                icon: Icon(Icons.person),
                label: Text("icon")),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // onSurface to user when onPressed is null
                    onSurface: Colors.red,
                    // maximumSize: Size(500, 100),
                    minimumSize: Size(300, 50)),
                onPressed: null,
                child: Text("Onpress is null")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    onPrimary: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
                onPressed: () {},
                child: Text("circular")),
            SizedBox(
              height: 30,
            ),
            Divider(
              color: Colors.black,
            ),
            Text("TextBT"),
            TextButton(
                style: TextButton.styleFrom(
                  primary: Colors.amber,
                ),
                onPressed: () {},
                child: Text("Textbutton")),
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.black,
            ),
            Text("OutlinedBT"),
            OutlinedButton(
                style: OutlinedButton.styleFrom(
                    primary: Colors.red,
                    side: BorderSide(color: Colors.blue, width: 4)),
                onPressed: () {},
                child: Text("OutlinedButton")),
          ],
        ),
      ),
    );
  }
}
