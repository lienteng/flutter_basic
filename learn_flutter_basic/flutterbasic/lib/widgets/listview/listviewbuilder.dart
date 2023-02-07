import 'package:flutter/material.dart';

class ListViewBuilder extends StatefulWidget {
  const ListViewBuilder({super.key});

  @override
  State<ListViewBuilder> createState() => _ListViewBuilderState();
}

class _ListViewBuilderState extends State<ListViewBuilder> {
  /// Creating a list of integers.
  final List<int> colorCodes = <int>[700, 600, 500, 400, 300, 200, 100];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ListView")),
      body: SafeArea(
        child: Container(
          color: Colors.white60,
          child: ListView.builder(
            padding: EdgeInsets.all(20),

            /// Telling the ListView how many items to display.
            itemCount: colorCodes.length,

            /// A function that returns a widget.
            itemBuilder: ((context, index) {
              return Container(
                height: 100,
                color: Colors.amber[colorCodes[index]],
              );
            }),
          ),
        ),
      ),
    );
  }
}
