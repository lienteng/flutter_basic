import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutterbasic/widgets/utils/custom_button.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginView extends StatefulWidget {
  const LoginView({
    Key? key,
  }) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isShowLoading = true;
  bool isShowConfetti = true;

  login() async {
    var headers = {'Content-Type': 'application/json'};
    var url = Uri.parse("https://reqres.in/api/login");
    var response = await http.post(url);
    var body = jsonEncode(
        {'username': 'eve.holt@reqres.in', 'password': 'cityslicka'});

    if (response.statusCode == 200) {
      final data = jsonDecode(response.body);

      // String? Token = await data['Token'];
      // SharedPreferences prefs = await SharedPreferences.getInstance();
      // prefs.setString("Token", Token!);

      // Navigator.pushNamed(context, "home");

      print(data);
    } else {
      print('error');
    }
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Theme.of(context).secondaryHeaderColor,
      appBar: AppBar(),
      persistentFooterButtons: const [
        SizedBox(
          width: 900,
          child: Text(
            '© LOAN',
            textAlign: TextAlign.center,
            style: TextStyle(
                color: Colors.black,
                letterSpacing: 1,
                fontWeight: FontWeight.bold),
          ),
        )
      ],
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'ເຂົ້າສູ່ລະບົບຕອນນີ້',
            ),
            Text(
              'ກະລຸນາເຂົ້າສູ່ລະບົບເພື່ອນຳໃຊ້ ແອັບ',
            ),
            SizedBox(
              height: 20,
            ),
            Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                    color: Theme.of(context).primaryColorLight, width: 0.5),
                borderRadius: const BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
              margin: EdgeInsets.symmetric(horizontal: size.width * 0.06),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                  vertical: size.height * 0.045,
                ),
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      SizedBox(
                        height: 5,
                      ),
                      TextFormField(
                        controller: emailController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return null;
                          }
                          return null;
                        },
                        maxLines: 1,
                        decoration: InputDecoration(
                          hintText: 'Enter your userName',
                          prefixIcon: const Icon(Icons.person),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      TextFormField(
                        controller: passwordController,
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return null;
                          } else if (value.length < 3) {
                            return "shot pw";
                          } else {
                            return null;
                          }
                        },
                        maxLines: 1,
                        obscureText: true,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(Icons.lock),
                          hintText: 'Enter your password',
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            // horizontal: size.width * 0.05,
                            // vertical: size.height * 0.04,
                            ),
                        child: CusTomButton(
                            onPressed: () => login(), title: "ເຂົ້າສູ່ລະບົບ"),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "ທ່ານມີບັນຊີລະບໍ? ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Navigator.push(context, MaterialPageRoute(builder: (_) {
                        //   return const RegisterView();
                        // }));
                      },
                      child: Text(
                        " ລົງທະບຽນ",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w500,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
