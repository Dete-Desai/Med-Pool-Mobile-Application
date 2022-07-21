import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Views/AuthenticationViews/LoginPage.dart';

class AuthProcessor {
  static void userSignIn(BuildContext context) {
    // Navigator.pushReplacementNamed(context, "LoginPage");
    MaterialPageRoute(builder: (context) => const LoginPage());
  }

  void userRegistration() {}
}
