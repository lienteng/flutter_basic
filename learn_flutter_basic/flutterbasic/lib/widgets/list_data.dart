import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ListData extends StatefulWidget {
  const ListData({super.key});

  @override
  State<ListData> createState() => _ListDataState();
}

class _ListDataState extends State<ListData> {
  List<Quote> quotes = [
    Quote(text: 'mytext', author: 'myauthor'),
    Quote(text: 'mytext', author: 'myauthor'),
    Quote(text: 'mytext', author: 'myauthor'),
  ];
  // List<String> quotes = [
  //   'aaa',
  //   'bbb',
  //   'ccc',
  //   'aaa',
  //   'bbb',
  //   'ccc',
  //   'aaa',
  //   'bbb',
  //   'ccc',
  //   'aaa',
  //   'bbb',
  //   'ccc'
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("listdata")),
      body: Column(
          children: quotes.map((quotes) => quotesTemplate(quotes)).toList()),
    );
  }
}

Widget quotesTemplate(quote) {
  return Card(
    margin: EdgeInsets.all(20),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment:
            CrossAxisAlignment.stretch, // stretch ສ້າງໃຫ້ເຕັມຂະໜາດຂອງ card
        children: [
          Text(
            quote.text,
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
          SizedBox(
            height: 6.0,
          ),
          Text(
            quote.author,
            style: TextStyle(fontSize: 18, color: Colors.grey[600]),
          ),
          TextButton.icon(
            onPressed: () {},
            label: Text("deleted"),
            icon: Icon(Icons.delete),
          ),
        ],
      ),
    ),
  );
}

class Quote {
  String? text;
  String? author;
  Quote({this.text, this.author});
}
