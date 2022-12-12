// import 'package:donorin/jadwal/model/base_response.dart';
// import 'dart:convert';

// class BaseResponseHistory {
//   BaseResponseHistory({
//     required this.model,
//     required this.pk,
//     required this.fields,
//   });

//   final String model;
//   final int pk;
//   final History fields;

//   factory BaseResponseHistory.fromJson(Map<String, dynamic> json) => BaseResponseHistory(
//     model: json["model"],
//     pk: json["pk"],
//     fields: History.fromJson(json["fields"]),
//   );

//   Map<String, dynamic> toJson() => {
//     "model": model,
//     "pk": pk,
//     "fields": fields.toJson(),
//   };
// }

// class History {
//   History({
//     required this.user,
//     required this.date,
//     required this.loc,
//   });

//   final int user;
//   final String date;
//   final String loc;

//   factory History.fromJson(Map<String, dynamic> json) => History(
//     user: json["user"],
//     date: json["tanggal_donor"],
//     loc: json["lokasi_donor"],
//   );

//   Map<String, dynamic> toJson() => {
//     "user": user,
//     "tanggal_donor": date,
//     "lokasi_donor": loc,
//   };
// }


import 'package:donorin/jadwal/model/base_response.dart';
import 'dart:convert';

// To parse this JSON data, do
//
//     final jadwal = jadwalFromJson(jsonString);

import 'dart:convert';

List<Jadwal> jadwalFromJson(String str) => List<Jadwal>.from(json.decode(str).map((x) => Jadwal.fromJson(x)));

String jadwalToJson(List<Jadwal> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Jadwal {
    Jadwal({
        required this.model,
        required this.pk,
        required this.fields,
    });

    String model;
    int pk;
    Fields fields;

    factory Jadwal.fromJson(Map<String, dynamic> json) => Jadwal(
        model: json["model"],
        pk: json["pk"],
        fields: Fields.fromJson(json["fields"]),
    );

    Map<String, dynamic> toJson() => {
        "model": model,
        "pk": pk,
        "fields": fields.toJson(),
    };
}

class Fields {
    Fields({
        required this.user,
        required this.date,
        required this.loc,
    });

    int user;
    String date;
    String loc;

    factory Fields.fromJson(Map<String, dynamic> json) => Fields(
        user: json["user"],
        date: json["date"],
        loc: json["loc"],
    );

    Map<String, dynamic> toJson() => {
        "user": user,
        "date": date,
        "loc": loc,
    };
}
