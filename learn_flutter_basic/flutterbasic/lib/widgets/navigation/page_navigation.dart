import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PageNavigationWidget extends StatefulWidget {
  const PageNavigationWidget({super.key});

  @override
  State<PageNavigationWidget> createState() => _PageNavigationWidgetState();
}

class _PageNavigationWidgetState extends State<PageNavigationWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("page navigation"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(0, 50, 9, 0),
          child: Column(
            children: [
              Text("Navigator push MaterialPageRoute "),
              ElevatedButton(
                  onPressed: () {
                    //  Navigator.push "MaterialPageRoute" ໄປໜ້າໃໝ່ ຮູບແບບສະໄລ່ ລຸ່ມຂຶ່ນເທິງ
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FirstPage();
                    }));
                  },
                  child: Text("111 ")),
              SizedBox(height: 20),
              Text("Navigator push CupertinoPageRoute "),
              ElevatedButton(
                  onPressed: () {
                    //  Navigator.push "CupertinoPageRoute" ໄປໜ້າໃໝ່ ຮູບແບບສະໄລ່ ຂວາ ຫາ ຊ້າຍ
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) {
                      return SeconPage();
                    }));
                  },
                  child: Text("222")),
              SizedBox(height: 20),
              Text("Navigator push PageRouteBuilder "),
              ElevatedButton(
                  onPressed: () {
                    //  Navigator.push "PageRouteBuilder" ໄປໜ້າໃໝ່ ຮູບແບບ animation
                    Navigator.push(
                        context,
                        PageRouteBuilder(
                            pageBuilder: (a, b, c) => ThirstPage(),
                            transitionsBuilder: (a, b, c, child) =>
                                FadeTransition(
                                  opacity: b,
                                  child: child,
                                ),
                            transitionDuration: Duration(seconds: 5)));
                  },
                  child: Text("333")),
              SizedBox(height: 20),
              Text("Navigator.pop(context)"),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.pop  ໃຊ້ໃນກໍລະນີກົດກັບຄືນໜ້າເກົ່າ
                    Navigator.pop(context);
                  },
                  child: Text("444")),
              SizedBox(height: 20),
              Text("Navigator.of(context).pop();"),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.pop  ໃຊ້ໃນກໍລະນີກົດກັບຄືນໜ້າເກົ່າ

                    Navigator.of(context).pop();
                  },
                  child: Text("555")),
              SizedBox(height: 20),
              Text("Navigator.of(context).pushNamed('/thirstpage')"),
              ElevatedButton(
                  onPressed: () {
                    // Navigator.pop  ໃຊ້ໃນກໍລະນີກົດກັບຄືນໜ້າເກົ່າ
                    Navigator.of(context).pushNamed('/thirtspage');
                  },
                  child: Text("666")),
              SizedBox(height: 20),
              Text("push pushReplacementNamed "),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/pagefour');
                  },
                  child: Text("777"))
            ],
          ),
        ),
      ),
    );
  }
}

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("first page"),
      ),
      body: Align(
          child: Container(
        color: Colors.amberAccent,
        child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("pop")),
      )),
    );
  }
}

class SeconPage extends StatefulWidget {
  const SeconPage({super.key});

  @override
  State<SeconPage> createState() => _SeconPageState();
}

class _SeconPageState extends State<SeconPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.purple,
      appBar: AppBar(
        title: Text("secon page"),
      ),
      body: Align(
          child: Container(
        color: Colors.green,
      )),
    );
  }
}

class ThirstPage extends StatefulWidget {
  const ThirstPage({super.key});

  @override
  State<ThirstPage> createState() => _ThirstPageState();
}

class _ThirstPageState extends State<ThirstPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("thirst page"),
      ),
      body: Align(
          child: Container(
        color: Colors.green,
      )),
    );
  }
}

class PageFour extends StatefulWidget {
  const PageFour({super.key});

  @override
  State<PageFour> createState() => _PageFourState();
}

class _PageFourState extends State<PageFour> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" pagefour"),
      ),
      body: Align(
          child: Container(
        color: Colors.green,
        child: ElevatedButton(
            onPressed: () {
              // pushReplacementNamed ໃຊ້ໃນກໍລະນີ ກົດກັບຄືນມັນຈະລືບຂໍ້ມູນໜ້ານີ້ ແລະ ຂ້າມໜ້າທີ່ມີຢູ່ນີ້
              Navigator.of(context).pushReplacementNamed('/pagefive');
            },
            child: Text("pagefive")),
      )),
    );
  }
}

class pagefive extends StatefulWidget {
  const pagefive({super.key});

  @override
  State<pagefive> createState() => _pagefiveState();
}

class _pagefiveState extends State<pagefive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" pagefive"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              // pushNamedAndRemoveUntil ກົດແລ້ວໄປຫາໜ້າ mywidget ແລ້ວເວລາກົດກັບຄືນມັນຈະລືບຂໍ້ມູນເກົ່ານັ້ນ ແລະ ຂ້າມມາຢູ່ໃນໜ້າ home ອີກເທືອ
              Navigator.of(context).pushNamedAndRemoveUntil(
                  '/mywidget', ModalRoute.withName("/home"));
            },
            child: Text("page")),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(" my widget"),
      ),
      body: Center(
        child: ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("mywid")),
      ),
    );
  }
}
