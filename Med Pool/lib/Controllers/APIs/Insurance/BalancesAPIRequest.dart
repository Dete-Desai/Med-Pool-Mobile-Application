import 'dart:convert';
import 'package:online_community_mobile_app/Models/Insurance/balances_model.dart';

import '../API.dart';
import 'package:http/http.dart' as http;

class BalancesAPIRequest extends MedismartAPI {
  Future<List<BalancesModel>> getBalances() async {
    var data =
        await http.get(Uri.parse(super.balancesPath), headers: super.headers);
    var jsonData = json.decode(data.body);

    List<BalancesModel> balances = [];
    for (var json in jsonData) {
      BalancesModel balancesModel = BalancesModel(
          id: json["id"],
          name: json["name"],
          memberNumber: json["memberNumber"],
          allocation: json["allocation"],
          expenditure: json["expenditure"],
          balance: json["balance"]);
      balances.add(balancesModel);
    }
    return balances;
  }
}
