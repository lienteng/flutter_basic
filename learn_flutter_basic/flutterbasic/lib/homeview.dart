import 'package:flutter/material.dart';
import 'package:flutterbasic/api/data_page.dart';
import 'package:flutterbasic/api/login.dart';
import 'package:flutterbasic/data/myhomepage.dart';
import 'package:flutterbasic/widgets/aspectRatio_Wrap.dart';
import 'package:flutterbasic/widgets/buttons_widget.dart';
import 'package:flutterbasic/widgets/card.dart';
import 'package:flutterbasic/widgets/container_wedget.dart';
import 'package:flutterbasic/widgets/expanded_widget.dart';
import 'package:flutterbasic/widgets/gridview/grid_view.dart';
import 'package:flutterbasic/widgets/gridview/gridview_builder.dart';
import 'package:flutterbasic/widgets/image_network.dart';
import 'package:flutterbasic/widgets/list_data.dart';
import 'package:flutterbasic/widgets/listview/list_view.dart';
import 'package:flutterbasic/widgets/listview/listviewbuilder.dart';
import 'package:flutterbasic/widgets/navigation/page_navigation.dart';
import 'package:flutterbasic/widgets/stack_alignment_position.dart';
import 'package:flutterbasic/widgets/wrap_widget.dart';
import 'model/user.dart';
import 'widgets/date_time/timePicker.dart';
import 'widgets/date_time/date_time_widget.dart';
import 'widgets/date_time/date_picker.dart';
import 'package:http/http.dart' as http;

import 'widgets/dropdown/dropdown.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final user = User("lien", 25, true);

  @override
  Widget build(BuildContext context) {
    print("data");
    return Scaffold(
        appBar: AppBar(title: Text("basic")),
        body: ListView(
          children: [
            Center(
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ButtonWidget()),
                        );
                      },
                      child: Text("ButtonWidget")),
                  ElevatedButton(

                      /// `ButtonStyle` is a class that contains the properties that define the visual appearance of a button.
                      style: ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(Colors.amber),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ContainerWedget()),
                        );
                      },
                      child: Text("container")),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.green,
                          onPrimary: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20))),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ImageNetwork()),
                        );
                      },
                      child: Text("ImageNetwork")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListViewWidget()),
                        );
                      },
                      child: Text("ListViewWidget")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ListViewBuilder()),
                        );
                      },
                      child: Text("ListVieBuilder")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ExpandedWidget()),
                        );
                      },
                      child: Text("Expanded")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ListData()),
                        );
                      },
                      child: Text("List data")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GridViewPage()),
                        );
                      },
                      child: Text("GridView count")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => GridViewBuilderPage()),
                        );
                      },
                      child: Text("GridView builder")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => StackWidget()),
                        );
                      },
                      child: Text("stack")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => AspetRadiod()),
                        );
                      },
                      child: Text("AspetRadioCardWrap")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => CardWidget()),
                        );
                      },
                      child: Text("CardWidget")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => WrapWidget()),
                        );
                      },
                      child: Text("WrapWidget")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DateTimeWidget()));
                      },
                      child: Text("date time")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DatePickerWidget()));
                      },
                      child: Text("date picker")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => TimePickerWidget()));
                      },
                      child: Text("Time Picker")),
                  ElevatedButton(
                      onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => PageNavigationWidget())),
                      child: Text("navigation page")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => MyHomePage()));
                      },
                      child: Text("data_model")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DataPage()));
                      },
                      child: Text("resapi")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginView()));
                      },
                      child: Text("login api")),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => DropdownExample()));
                      },
                      child: Text("dropdown"))
                ],
              ),
            ),
          ],
        ));
  }
}

// i want to use dropdown province from api and dropdown city from api
