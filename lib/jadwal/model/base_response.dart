import 'package:donorin/jadwal/model/history_model.dart';
import 'dart:convert';

class ResponseModel {
  ResponseModel({
    required this.msg,
    required this.data,
  });

  final String msg;
  final List<BaseResponseHistory> data;
}