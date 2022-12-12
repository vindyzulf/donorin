import 'package:donorin/jadwal/model/base_response.dart';
import 'dart:convert';

class BaseResponseHistory {
  BaseResponseHistory({
    required this.model,
    required this.pk,
    required this.fields,
  });

  String model;
  int pk;
  History fields;

  factory BaseResponseHistory.fromJson(Map<String, dynamic> json) => BaseResponseHistory(
    model: json["model"],
    pk: json["pk"],
    fields: History.fromJson(json["fields"]),
  );

  Map<String, dynamic> toJson() => {
    "model": model,
    "pk": pk,
    "fields": fields.toJson(),
  };
}

class History {
  History({
    required this.user,
    required this.date,
    required this.loc,
  });

  final int user;
  final String date;
  final String loc;

  factory History.fromJson(Map<String, dynamic> json) => History(
    user: json["user"],
    date: json["tanggal_donor"],
    loc: json["lokasi_donor"],
  );

  Map<String, dynamic> toJson() => {
    "user": user,
    "tanggal_donor": date,
    "lokasi_donor": loc,
  };
}