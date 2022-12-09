import 'package:http/http.dart' as http;
import 'dart:convert';
import 'model/history_model.dart';

Future<List<TempatWisata>> tempatwisataFetch() async {
  var url = Uri.parse('');
  var response = await http.get(
    url,
    headers: {
      "Access-Control-Allow-Origin": "*",
      "Content-Type": "application/json",
    },
  );

  var data = jsonDecode(utf8.decode(response.bodyBytes));

  List<History> listHistory = [];
  for (var d in data) {
    if (d != null) {
      listHistory.add(History.fromJson(d));
    }
  }

  return listHistory;
}