import 'package:flutter/material.dart';
import 'package:flutter_resful_api/apiservice.dart';
import 'package:flutter_resful_api/model/user_model.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late List<UserModel>? _userModel = [];
  @override
  // void initState() {
  //   super.initState();
  //   _getData();
  // }

  // void _getData() async {
  //   _userModel = (await ApisService().getUsers());
  //   Future.delayed(const Duration(seconds: 1)).then((value) => setState(() {}));
  // }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('REST API Example'),
      ),
      body: _userModel == null || _userModel!.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: _userModel!.length,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(_userModel![index].page.toString()),
                          Text(_userModel![index].totalPages.toString()),
                        ],
                      ),
                      const SizedBox(
                        height: 20.0,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        // children: [
                        //   Text(_userModel![index].id),
                        //   Text(_userModel![index].email),
                        // ],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
