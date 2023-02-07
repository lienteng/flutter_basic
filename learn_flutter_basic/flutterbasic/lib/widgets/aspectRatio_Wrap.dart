import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class AspetRadiod extends StatefulWidget {
  const AspetRadiod({super.key});

  @override
  State<AspetRadiod> createState() => _AspetRadiodState();
}

class _AspetRadiodState extends State<AspetRadiod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AspectRatio")),
      body: SafeArea(
          child: Container(
        color: Colors.amberAccent,

        /// `infinity`  คือค่าสองเท่าที่มากกว่าค่าอนันต์สองเท่าอื่นๆ
        width: double.infinity,
        height: 100.0,
        alignment: Alignment.center,

        /// AspectRatio วิดเจ็ตที่ใช้ลูกและอัตราส่วนและขนาดตัวเองเพื่อให้ตรงกับอัตราส่วนนั้น
        child: AspectRatio(
          aspectRatio: 20 / 10,
          child: Container(
            color: Colors.green,
          ),
        ),
      )),
    );
  }
}
