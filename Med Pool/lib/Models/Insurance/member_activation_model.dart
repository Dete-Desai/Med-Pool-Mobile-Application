import 'dart:convert';

class MemberActivationModel {
  late String id;
  late String memberNumber;
  late String token;
  MemberActivationModel(
      {required this.id, required this.memberNumber, required this.token});

  factory MemberActivationModel.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return MemberActivationModel(
        id: json["id"],
        memberNumber: json["memberNumber"],
        token: json["token"]);
  }
}
