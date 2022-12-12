/* 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:donorin/landing/model/newsModel.dart';

Future<http.Response> fetchLanding() async {
  var url =
      Uri.parse('http://localhost:8000/landing/addNews/');
  var response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));

  // melakukan decode response menjadi bentuk json
  var data = jsonDecode(utf8.decode(response.bodyBytes));

  // melakukan konversi data json menjadi object ToDo
  List<Landing> listArtikel = [];
  for (var d in data) {
    if (d != null) {
      listArtikel.add(Landing.fromJson(d));
    }
  }

  ret
}*/