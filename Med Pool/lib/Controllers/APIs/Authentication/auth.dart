// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Views/AuthenticationViews/LoginPage.dart';
import 'package:online_community_mobile_app/Views/AuthenticationViews/RegistrationPage.dart';

class Auth extends StatefulWidget {
  @override
  _AuthState createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  bool showSignUp = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Online Community",
          ),
          elevation: 16.0,
          actions: [
            IconButton(
                icon: Icon(Icons.swap_horiz),
                onPressed: () {
                  setState(() {
                    showSignUp = !showSignUp;
                  });
                })
          ],
        ),
        // ternary operator
        body: Container(child: showSignUp ? RegistrationPage() : LoginPage()));
  }
}
