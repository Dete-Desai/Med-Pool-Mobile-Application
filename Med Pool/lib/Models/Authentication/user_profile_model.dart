import 'dart:convert';

class UserProfileModel {
  late String id;
  late String firstName;
  late String secondName;
  late String phoneNumber;
  late String emergencyNumber;
  late String age;
  late String height;
  late String weight;
  late String bloodGroup;
  late String preExistingConditions;
  late String allergyAndReactions;

  UserProfileModel({
    required this.id,
    required this.firstName,
    required this.secondName,
    required this.phoneNumber,
    required this.emergencyNumber,
    required this.age,
    required this.height,
    required this.weight,
    required this.bloodGroup,
    required this.preExistingConditions,
    required this.allergyAndReactions,
  });

  factory UserProfileModel.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return UserProfileModel(
        id: json["id"],
        firstName: json["firstName"],
        secondName: json["secondName"],
        phoneNumber: json["phoneNumber"],
        emergencyNumber: json["emergencyNumber"],
        age: json["age"],
        height: json["height"],
        weight: json["weight"],
        bloodGroup: json["bloodGroup"],
        preExistingConditions: json["preExistingConditions"],
        allergyAndReactions: json["allergyAndReactions"]);
  }
}
