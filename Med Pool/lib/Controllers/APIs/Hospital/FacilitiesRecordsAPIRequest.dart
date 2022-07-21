import 'dart:convert';
import 'package:online_community_mobile_app/Models/Hospitals/facilities_model.dart';

import '../API.dart';
import 'package:http/http.dart' as http;

class FacilitiesRecordsAPIRequest extends SmartConnectAPI {
  Future<List<FacilitiesModel>> getFacilityRecords() async {
    var data = await http.get(Uri.parse(super.facilitiesRecordsPath),
        headers: super.headers);
    var jsonData = json.decode(data.body);

    List<FacilitiesModel> facilitiesRecords = [];
    for (var json in jsonData) {
      FacilitiesModel facilitiesRecordsModels = FacilitiesModel(
          id: json["id"],
          hospitalName: json["hospitalName"],
          date: json["date"],
          doctorName: json["doctorName"],
          operatingHours: json["operatingHours"],
          location: json["location"],
          insuranceProvider: json["insuranceProvider"]);
      facilitiesRecords.add(facilitiesRecordsModels);
    }
    return facilitiesRecords;
  }
}
