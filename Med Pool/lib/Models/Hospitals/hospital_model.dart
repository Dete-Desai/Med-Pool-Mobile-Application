// ignore_for_file: file_names

import 'dart:convert';

class HospitalModel {
  late String id;
  late String hospitalName;
  late String date;
  late String operatingHours;
  late String location;
  late String insuranceProvider;
  HospitalModel({
    required this.id,
    required this.hospitalName,
    required this.date,
    required this.operatingHours,
    required this.location,
    required this.insuranceProvider,
  });

  factory HospitalModel.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return HospitalModel(
        id: json["id"],
        hospitalName: json["hospitalName"],
        date: json["date"],
        operatingHours: json["operatingHours"],
        location: json["location"],
        insuranceProvider: json["insuranceProvider"]);
  }
}
