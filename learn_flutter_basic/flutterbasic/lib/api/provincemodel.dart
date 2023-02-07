// To parse this JSON data, do
//
//     final province = provinceFromJson(jsonString);

import 'dart:convert';

Province provinceFromJson(String str) => Province.fromJson(json.decode(str));

String provinceToJson(Province data) => json.encode(data.toJson());

class Province {
    Province({
        this.message,
        this.didError,
        this.errorMessage,
        this.model,
    });

    dynamic message;
    bool? didError;
    dynamic errorMessage;
    List<Model>? model;

    factory Province.fromJson(Map<String, dynamic> json) => Province(
        message: json["message"],
        didError: json["didError"],
        errorMessage: json["errorMessage"],
        model: json["model"] == null ? [] : List<Model>.from(json["model"]!.map((x) => Model.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "didError": didError,
        "errorMessage": errorMessage,
        "model": model == null ? [] : List<dynamic>.from(model!.map((x) => x.toJson())),
    };
}

class Model {
    Model({
        this.id,
        this.name,
        this.nameEng,
        this.deleted,
        this.code,
        this.districts,
    });

    int? id;
    String? name;
    String? nameEng;
    bool? deleted;
    String? code;
    List<District>? districts;

    factory Model.fromJson(Map<String, dynamic> json) => Model(
        id: json["id"],
        name: json["name"],
        nameEng: json["nameEng"],
        deleted: json["deleted"],
        code: json["code"],
        districts: json["districts"] == null ? [] : List<District>.from(json["districts"]!.map((x) => District.fromJson(x))),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "nameEng": nameEng,
        "deleted": deleted,
        "code": code,
        "districts": districts == null ? [] : List<dynamic>.from(districts!.map((x) => x.toJson())),
    };
}

class District {
    District({
        this.id,
        this.name,
        this.provinceId,
        this.deleted,
        this.nameEng,
        this.province,
        this.city,
        this.tiersDistrict,
        this.tiersSecondaryDistrict,
    });

    int? id;
    String? name;
    int? provinceId;
    bool? deleted;
    String? nameEng;
    dynamic province;
    List<dynamic>? city;
    List<dynamic>? tiersDistrict;
    List<dynamic>? tiersSecondaryDistrict;

    factory District.fromJson(Map<String, dynamic> json) => District(
        id: json["id"],
        name: json["name"],
        provinceId: json["provinceId"],
        deleted: json["deleted"],
        nameEng: json["nameEng"],
        province: json["province"],
        city: json["city"] == null ? [] : List<dynamic>.from(json["city"]!.map((x) => x)),
        tiersDistrict: json["tiersDistrict"] == null ? [] : List<dynamic>.from(json["tiersDistrict"]!.map((x) => x)),
        tiersSecondaryDistrict: json["tiersSecondaryDistrict"] == null ? [] : List<dynamic>.from(json["tiersSecondaryDistrict"]!.map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
        "provinceId": provinceId,
        "deleted": deleted,
        "nameEng": nameEng,
        "province": province,
        "city": city == null ? [] : List<dynamic>.from(city!.map((x) => x)),
        "tiersDistrict": tiersDistrict == null ? [] : List<dynamic>.from(tiersDistrict!.map((x) => x)),
        "tiersSecondaryDistrict": tiersSecondaryDistrict == null ? [] : List<dynamic>.from(tiersSecondaryDistrict!.map((x) => x)),
    };
}
