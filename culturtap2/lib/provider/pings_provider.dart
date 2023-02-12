import 'package:culturtap/constants/constant.dart';
import 'package:culturtap/model/pinds_model.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';

class pings_provider extends ChangeNotifier {
  late List<pings_model> _model;

  getUsers() async {
    try {
      var url = Uri.parse(api.BASE_URL + api.CALL_GET);
      var response = await http.post(
        url,
        headers: {"content-type": "application/json"},
        body: json.encode({}),
      );
      if (response.statusCode == 200) {
        _model = pings_modelFromJson(response.body);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
