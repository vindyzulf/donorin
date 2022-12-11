import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:donorin/landing/model/newsModel.dart';

Future<List<Landing>> fetchArtikel() async {
  var url =
      Uri.parse('http://localhost:8000/');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object ToDo
  List<Landing> listArtikel = [];
  for (var d in data) {
    if (d != null) {
      listArtikel.add(Landing.fromJson(d));
    }
  }

  return listArtikel;
}