import 'dart:convert';

class SpecialistModel {
  late String id;
  late String hospitalLocation;
  late String insuranceProvider;
  late String gender;

  SpecialistModel({
    required this.id,
    required this.hospitalLocation,
    required this.insuranceProvider,
    required this.gender,
  });

  factory SpecialistModel.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return SpecialistModel(
        id: json["id"],
        hospitalLocation: json["hospitalLocation"],
        insuranceProvider: json["insuranceProvider"],
        gender: json["gender"]);
  }
}
