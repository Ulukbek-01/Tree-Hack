import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import '../model/model_user.dart';
import 'main_data.dart';

class UserData with ChangeNotifier {
  ModelUser? user;
  bool isLoading = true;
  static Uri urlOrder = Uri.parse('');

  Future login(String email, String password) async {
    urlOrder = Uri.parse('${MainData.baseUrl}login');
    var response = await http.post(
      urlOrder,
      headers: {"Content-Type": "application/json"},
      body: json.encode({'email': email, 'password': password}),
    );

    if (response.statusCode != 200) {
      print('error 200');
    } else {
      String source = const Utf8Decoder().convert(response.bodyBytes);
      var body = json.decode(source) as Map<String, dynamic>;

      print(body);
    }
  }
}
