import 'package:flutter/material.dart';
import 'package:flutterbasic/api/data_page.dart';
import 'package:flutterbasic/homeview.dart';
import 'package:flutterbasic/widgets/card.dart';
import 'package:flutterbasic/widgets/navigation/page_navigation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ສະແດງກ່ອນທຸກເທື່ອ
      initialRoute: '/home',
      routes: {
        '/': (context) =>
            CardWidget(), // card page ສະແດງກ່ອນ ຖ້າກໍລະນີບໍ່ມີ initialRoute
        '/home': (context) => HomeView(),
        '/firstpage': (context) => FirstPage(),
        '/seconpage': (context) => SeconPage(), // navigator to secon page
        '/thirtspage': (context) => ThirstPage(),
        '/pagefour': (context) => PageFour(),
        '/pagefive': (context) => pagefive(),
        '/mywidget': (context) => MyWidget(),
        '/datapage': (context) => DataPage(),
      },
      // home: DataPage(),

      // Pass arguments to a named route ให้ความสามารถในการนำทางไปยังเส้นทางที่มีชื่อจากส่ของแอพโดยใช้ตัวระบุทั่วไป
      onGenerateRoute: (settings) {
        if (settings.name == "/seconpage") {
          final args = settings.arguments as SeconPage;
          return MaterialPageRoute(
            builder: (context) {
              return SeconPage();
            },
          );
        }
      },
    );
  }
}

class NameRout extends StatefulWidget {
  const NameRout({super.key});

  @override
  State<NameRout> createState() => _NameRoutState();
}

class _NameRoutState extends State<NameRout> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("name rout")),
      body: Column(
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/seconpage");
              },
              child: Text("first page")),
        ],
      ),
    );
  }
}
