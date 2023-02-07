import 'dart:convert';

import 'package:flutter_resful_api/config/config.dart';
import 'package:http/http.dart' as http;
import 'model/user_model.dart';

class ApisService {
  static var client = http.Client();

  static Future<dynamic> getUsers() async {
    Map<String, String> requestHeaders = {
      'content-Type': 'application/json',
    };
    var url = Uri.https(Config.apiURL, Config.apiEndPoint);
    var response = await client.get(url, headers: requestHeaders);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    }
    return null;
  }

  static Future<dynamic> createUsers(userName, userJob) async {
    Map<String, String> requestHeaders = {
      'content-Type': 'application/json',
    };
    var url = Uri.https(Config.apiURL, Config.apiEndPoint);
    var response = await client.post(url,
        body: jsonEncode({'name': 'userName', 'job': 'userJob'}),
        headers: requestHeaders);
    if (response.statusCode == 201) {
      var data = jsonDecode(response.body);
      return data;
    }
    return null;
  }

  static Future<dynamic> editUsers(userId) async {
    Map<String, String> requestHeaders = {
      'content-Type': 'application/json',
    };
    var url = Uri.https(Config.apiURL, "${Config.apiEndPoint}/userId");
    var response = await client.put(url,
        body: jsonEncode({'name': 'userName', 'job': 'userJob'}),
        headers: requestHeaders);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    }
    return null;
  }

  static Future<dynamic> deletedUsers(userId) async {
    Map<String, String> requestHeaders = {
      'content-Type': 'application/json',
    };
    var url = Uri.https(Config.apiURL, "${Config.apiEndPoint}/userId");
    var response = await client.delete(url, headers: requestHeaders);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return data;
    }
    return null;
  }
  //  static Future<List<dynamic>?> getUsers() async {
  //   Map<String, String> requestHeaders = {
  //     'content-Type': 'application/json',
  //   };
  //   var url = Uri.https(Config.apiURL, Config.apiEndPoint);
  //   var response = await client.get(url, headers: requestHeaders);
  //   if (response.statusCode == 200) {
  //     var data = jsonDecode(response.body);
  //     return data;
  //   }
  //   return null;
  // }

  // Future<List<UserModel>?> getUsers() async {
  //   Map<String, String> requestHeaders = {
  //     'content-Type': 'application/json',
  //   };
  //   try {
  //     var url = Uri.parse(Config.apiURL + Config.apiEndPoint);
  //     print(url);
  //     var response = await http.get(url, headers: requestHeaders);
  //     if (response.statusCode == 200) {
  //       List<UserModel> model =
  //           userModelFromJson(response.body) as List<UserModel>;
  //       print(response.body);
  //       return model;
  //     }
  //   } catch (e) {
  //     print(e.toString());
  //   }
  // }
}
