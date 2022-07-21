import 'dart:convert';

class BalancesModel {
  late String id;
  late String name;
  late String memberNumber;
  late String allocation;
  late String expenditure;
  late String balance;

  BalancesModel({
    required this.id,
    required this.name,
    required this.memberNumber,
    required this.allocation,
    required this.expenditure,
    required this.balance,
  });

  factory BalancesModel.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return BalancesModel(
        id: json["id"],
        name: json["name"],
        memberNumber: json["memberNumber"],
        allocation: json["allocation"],
        expenditure: json["expenditure"],
        balance: json["balance"]);
  }
}
