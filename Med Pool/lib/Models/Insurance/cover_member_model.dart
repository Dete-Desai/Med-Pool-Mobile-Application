import 'dart:convert';

class CoverMemberModel {
  late String id;
  late String scheme;
  late String name;
  late String status;

  CoverMemberModel(
      {required this.id,
      required this.name,
      required this.scheme,
      required this.status});

  factory CoverMemberModel.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return CoverMemberModel(
        id: json["id"],
        name: json["name"],
        scheme: json["scheme"],
        status: json["status"]);
  }
}
