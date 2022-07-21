// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';

class RegistrationLink extends StatefulWidget {
  @override
  _RegistrationLinkState createState() => _RegistrationLinkState();
}

class _RegistrationLinkState extends State<RegistrationLink> {
  @override
  Widget build(BuildContext context) {
    void directToPasswordReset() =>
        Navigator.pushNamed(context, '/ForgotPasswordPage');

    void directToRegistration() =>
        Navigator.pushNamed(context, '/RegistrationPage');

    void directToSocialRegistration() =>
        Navigator.pushNamed(context, 'SocialRegistrationPage');
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              child: const Text(
                "Forgot Password?",
                style: TextStyle(color: Color(0xFF2BB9AD), fontSize: 20),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                directToPasswordReset();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: InkWell(
              child: const Text(
                "Create Account",
                style: TextStyle(color: Color(0xFF2BB9AD), fontSize: 20),
                textAlign: TextAlign.center,
              ),
              onTap: () {
                directToRegistration();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment:
                  CrossAxisAlignment.center, //Center Row contents vertically,
              children: [
                SizedBox(
                    child: Image.asset('assets/icons/google.png'),
                    width: 45,
                    height: 45),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Expanded(
                    child: InkWell(
                      child: Text(
                        "Continue With Google",
                        style:
                            TextStyle(color: Color(0xFF2BB9AD), fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        directToSocialRegistration();
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, //Center Row contents horizontally,
              crossAxisAlignment:
                  CrossAxisAlignment.center, //Center Row contents vertically,
              children: [
                SizedBox(
                    child: Image.asset('assets/icons/facebook.png'),
                    width: 45,
                    height: 45),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                  child: Expanded(
                    child: InkWell(
                      child: Text(
                        "Continue With Facebook",
                        style:
                            TextStyle(color: Color(0xFF2BB9AD), fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                      onTap: () {
                        directToSocialRegistration();
                      },
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
