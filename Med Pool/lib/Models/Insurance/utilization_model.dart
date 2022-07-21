import 'dart:convert';

class UtilizationModel {
  late String id;
  late String name;
  late String memberNumber;
  late String service;
  late String date;
  late String cost;

  UtilizationModel(
      {required this.id,
      required this.name,
      required this.memberNumber,
      required this.service,
      required this.date,
      required this.cost});

  factory UtilizationModel.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return UtilizationModel(
        id: json["id"],
        name: json["name"],
        memberNumber: json["memberNumber"],
        service: json["service"],
        date: json["date"],
        cost: json["cost"]);
  }
}
