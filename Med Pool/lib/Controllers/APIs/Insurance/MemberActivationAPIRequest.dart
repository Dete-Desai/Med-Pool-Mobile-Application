import 'dart:convert';
import '../API.dart';
import 'package:http/http.dart' as http;

class MemberActivationAPIRequest extends MedismartAPI {
  Future<http.Response> activateUser(String memberNumber) async {
    var body = jsonEncode({'memberNumber': memberNumber});

    http.Response response = await http.post(
        Uri.parse(super.memberActivationPath),
        headers: super.headers,
        body: body);

    return response;
  }
}
