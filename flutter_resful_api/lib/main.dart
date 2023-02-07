import 'package:flutter/material.dart';
import 'package:flutter_resful_api/apiservice.dart';
import 'package:flutter_resful_api/homepage.dart';

void main() async {
  // var dataUser = await ApisService.getUsers();
  // print(dataUser);

  // var postUser = await ApisService.createUsers("morpheus", "leader");
  // print(postUser);

  // var updatetUser =
  //     await ApisService.editUsers(304, "morpheus-lien", "leader-developer");
  // print(updatetUser);

  var deletedUsers = await ApisService.deletedUsers(304);
  print(deletedUsers);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
