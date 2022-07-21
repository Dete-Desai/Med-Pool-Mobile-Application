import 'dart:convert';
import '../API.dart';
import 'package:http/http.dart' as http;
import 'package:online_community_mobile_app/Models/Authentication/user_profile_model.dart';

class UserProfileRequest extends AuthAPI {
  Future<List<UserProfileModel>> getUserProfile() async {
    var data = await http.get(Uri.parse(super.userProfilePath),
        headers: super.headers);
    var jsonData = json.decode(data.body);

    List<UserProfileModel> userProfile = [];
    for (var json in jsonData) {
      UserProfileModel userProfileModels = UserProfileModel(
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
      userProfile.add(userProfileModels);
    }
    return userProfile;
  }
}
