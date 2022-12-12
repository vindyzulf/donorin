import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:donorin/jadwal/model/history_model.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:donorin/jadwal/model/base_response.dart';

class HistoryFetch {
  Future<ResponseModel> getHistoryFetch() async {
    try {
      final prefs = await SharedPreferences.getInstance();
      final int? userId = prefs.getInt('USERID');

      if (userId == null) {
        ResponseModel(msg: "User tidak ditemukan, silahkan login kembali", data: List.empty());
      }
      final body = json.encode({"user_id": userId});

      final response = await http.post(
          Uri.parse(
              'http://10.0.2.2:8000//jadwal/get-jadwal-user/'),
          headers: {
            "Access-Control-Allow-Origin": "*",
            'Content-Type': 'application/json',
          },
          body: body);

      if (response.statusCode == 200) {
        List<dynamic> res = json.decode(response.body);
        List<BaseResponseHistory> data = [];
      for (int i = 0; i < res.length; i++) {
          data.add(BaseResponseHistory.fromJson(
              res[i] as Map<String, dynamic>));
        }
        return ResponseModel(msg: "Berhasil", data: data);
      }

      return ResponseModel(msg: response.body, data: List.empty());
    } catch (e) {
      return ResponseModel(msg: e.toString(), data: List.empty());
    }
  }
}