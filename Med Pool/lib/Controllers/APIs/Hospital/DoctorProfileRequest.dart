import 'dart:convert';
import '../../../Models/Hospitals/doctor_profile_model.dart';
import '../API.dart';
import 'package:http/http.dart' as http;

class DoctorProfileRequest extends SmartConnectAPI {
  Future<List<DoctorProfileModel>> getDoctorProfile() async {
    var data = await http.get(Uri.parse(super.doctorProfilePath),
        headers: super.headers);
    var jsonData = json.decode(data.body);

    List<DoctorProfileModel> doctorProfile = [];
    for (var json in jsonData) {
      DoctorProfileModel doctorProfileModels = DoctorProfileModel(
          id: json["id"],
          firstName: json["firstName"],
          secondName: json["secondName"],
          profession: json["profession"],
          hospitalName: json["hospitalName"],
          about: json["about"],
          workingHours: json["workingHours"]);
      doctorProfile.add(doctorProfileModels);
    }
    return doctorProfile;
  }
}
