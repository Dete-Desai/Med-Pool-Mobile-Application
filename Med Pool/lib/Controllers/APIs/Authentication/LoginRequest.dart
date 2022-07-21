import 'dart:convert';
import 'package:http/http.dart' as http;

import '../API.dart';

class LoginRequest extends AuthAPI {
  Future<http.Response> login(String email, String password) async {
    var body = jsonEncode({'email': email, 'password': password});

    http.Response response = await http.post(Uri.parse(super.authPath),
        headers: super.headers, body: body);

    return response;
  }

  Future<http.Response> logout(int id, String token) async {
    var body = jsonEncode({'id': id, 'token': token});

    http.Response response = await http.post(Uri.parse(super.logoutPath),
        headers: super.headers, body: body);

    return response;
  }
}
