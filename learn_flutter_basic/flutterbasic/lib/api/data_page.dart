import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutterbasic/api/provincemodel.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class DataPage extends StatefulWidget {
  const DataPage({super.key});

  @override
  State<DataPage> createState() => _DataPageState();
}

class _DataPageState extends State<DataPage> {
  ListProfessionalTypeAsync? listProfessionalTypeAsync;
  void initState() {
    super.initState();
    print(initState);
    // getdata();
    fetchProfessionalTypes();
    getProvince();
  }

  //  getdata() async {
  //   final response = await http.get(
  //     Uri.parse(
  //         "http://apps.akat.la:9104/api/MasterData/listProfessionalTypeAsync"),

  //   );

  //   print(response.body);
  // }

  getProvince() async {
    var url = Uri.parse(
        "http://apps.akat.la:9104/api/MasterData/listProvinceAsync/1");

    http.Response response =
        await http.get(url, headers: {'Content-Type': 'application/json'});
    if (response.statusCode == 200) {
      print(response.body);
      return

          /// Converting the response body into a Province object.
          Province.fromJson(jsonDecode(response.body));
    }
  }

  Future<ListProfessionalTypeAsync> fetchProfessionalTypes() async {
    final response = await http.get(Uri.parse(
        "http://apps.akat.la:9104/api/MasterData/listProfessionalTypeAsync"));
    if (response.statusCode == 200) {
      print(response.body);
      return ListProfessionalTypeAsync.fromJson(json.decode(response.body));
    } else {
      throw Exception('Failed to load data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("data"),
      ),
    );
  }
}

ListProfessionalTypeAsync listProfessionalTypeAsyncFromJson(String str) =>
    ListProfessionalTypeAsync.fromJson(json.decode(str));

String listProfessionalTypeAsyncToJson(ListProfessionalTypeAsync data) =>
    json.encode(data.toJson());

class ListProfessionalTypeAsync {
  ListProfessionalTypeAsync({
    this.message,
    this.didError,
    this.errorMessage,
    this.model,
  });

  dynamic message;
  bool? didError;
  dynamic errorMessage;
  List<Model>? model;

  factory ListProfessionalTypeAsync.fromJson(Map<String, dynamic> json) =>
      ListProfessionalTypeAsync(
        message: json["message"],
        didError: json["didError"],
        errorMessage: json["errorMessage"],
        model: json["model"] == null
            ? []
            : List<Model>.from(json["model"]!.map((x) => Model.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "message": message,
        "didError": didError,
        "errorMessage": errorMessage,
        "model": model == null
            ? []
            : List<dynamic>.from(model!.map((x) => x.toJson())),
      };
}

class Model {
  Model({
    this.id,
    this.professionaltype,
    this.professionaltypeeng,
  });

  int? id;
  String? professionaltype;
  String? professionaltypeeng;

  factory Model.fromJson(Map<String, dynamic> json) => Model(
        id: json["id"],
        professionaltype: json["professionaltype"],
        professionaltypeeng: json["professionaltypeeng"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "professionaltype": professionaltype,
        "professionaltypeeng": professionaltypeeng,
      };
}
