import 'dart:convert';

class UserModel {
  late String id;
  late String userId;
  late String firstName;
  late String secondName;
  late String email;
  late String phoneNumber;
  late String token;

  UserModel(
      {required this.id,
      required this.userId,
      required this.firstName,
      required this.secondName,
      required this.email,
      required this.phoneNumber,
      required this.token});

  factory UserModel.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return UserModel(
        id: json['id'],
        userId: json['userId'],
        firstName: json['firstName'],
        secondName: json['secondName'],
        email: json['email'],
        phoneNumber: json['phoneNumber'],
        token: json['token']);
  }

  void printAttributes() {
    print("token: ${this.token}\n");
  }
}
