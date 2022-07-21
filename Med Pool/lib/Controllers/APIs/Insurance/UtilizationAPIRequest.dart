import 'dart:convert';
import 'package:online_community_mobile_app/Models/Insurance/utilization_model.dart';

import '../API.dart';
import 'package:http/http.dart' as http;

class UtilizationAPIRequest extends MedismartAPI {
  Future<List<UtilizationModel>> getUtilization() async {
    var data = await http.get(Uri.parse(super.utilizationPath),
        headers: super.headers);
    var jsonData = json.decode(data.body);

    List<UtilizationModel> utilization = [];
    for (var json in jsonData) {
      UtilizationModel utilizationModel = UtilizationModel(
          id: json["id"],
          name: json["name"],
          memberNumber: json["memberNumber"],
          service: json["service"],
          date: json["date"],
          cost: json["cost"]);
      utilization.add(utilizationModel);
    }
    return utilization;
  }
}
