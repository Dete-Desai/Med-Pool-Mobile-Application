import 'dart:convert';
import 'package:http/http.dart' as http;

import '../API.dart';

class SignUpRequest extends AuthAPI {
  Future<http.Response> signUp(
      String firstName,
      String secondName,
      String email,
      String phoneNumber,
      String password,
      String passwordConfirmation) async {
    var body = jsonEncode({
      'customer': {
        'name': firstName,
        'secondName': secondName,
        'email': email,
        'phoneNumber': phoneNumber,
        'password': password,
        'password_confirmation': passwordConfirmation
      }
    });

    http.Response response = await http.post(Uri.parse(super.userPath),
        headers: super.headers, body: body);
    return response;
  }
}
