import 'dart:convert';

class DoctorProfileModel {
  late String id;
  late String firstName;
  late String secondName;
  late String profession;
  late String hospitalName;
  late String about;
  late String workingHours;

  DoctorProfileModel(
      {required this.id,
      required this.firstName,
      required this.secondName,
      required this.profession,
      required this.hospitalName,
      required this.about,
      required this.workingHours});

  factory DoctorProfileModel.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return DoctorProfileModel(
        id: json["id"],
        firstName: json["firstName"],
        secondName: json["secondName"],
        profession: json["profession"],
        hospitalName: json["hospitalName"],
        about: json["about"],
        workingHours: json["workingHours"]);
  }
}
