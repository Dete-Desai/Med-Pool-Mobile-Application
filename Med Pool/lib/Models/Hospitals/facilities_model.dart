import 'dart:convert';

class FacilitiesModel {
  late String id;
  late String hospitalName;
  late String date;
  late String doctorName;
  late String operatingHours;
  late String location;
  late String insuranceProvider;

  FacilitiesModel(
      {required this.id,
      required this.hospitalName,
      required this.date,
      required this.doctorName,
      required this.operatingHours,
      required this.location,
      required this.insuranceProvider});

  factory FacilitiesModel.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return FacilitiesModel(
        id: json["id"],
        hospitalName: json["hospitalName"],
        date: json["date"],
        doctorName: json["doctorName"],
        operatingHours: json["operatingHours"],
        location: json["location"],
        insuranceProvider: json["insuranceProvider"]);
  }
}
