// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Authentication/SubComponents/AdditionalMetrics.dart';

import '../SubComponents/EmergencyContact.dart';
import '../SubComponents/HealthConditions.dart';
import '../SubComponents/PersonalDetails.dart';

class UserProfile extends StatefulWidget {
  @override
  _UserProfileState createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
          height: 580,
          child: ListView(
            children: [
              Card(
                  child: Column(children: [
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Row(
                    children: [
                      SizedBox(
                    height: 35.0,
                    width: 35.0,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Color(0xFF2BB9AD),
                      child: Padding(
                        padding: const EdgeInsets.all(2), // Border radius
                        child: ClipOval(
                            child: Image.asset('assets/icons/businesswoman.png')),
                      ),
                    )),
                      Expanded(
                        child: const ListTile(
                          tileColor: Colors.white,
                          title: Text(
                            'Lady Victoria',
                            style: TextStyle(
                                fontStyle: FontStyle.normal,
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                color: Colors.black),
                          ),
                          subtitle: Text('ladyvictoria@gmail.com',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Color(0xFF979797))),
                        ),
                      ),
                    ],
                  ),
                ),
                Divider(
                  color: Colors.black,
                  height: 4,
                ),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(270, 5, 5, 10),
                      child: SizedBox(
                        height: 30,
                        width: 80,
                        child: ElevatedButton(
                          child: const Text(
                            "Save",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 20.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            //directToHome();
                          },
                          style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Color(0xFF2BB9AD)),
                              shape: MaterialStateProperty.all<
                                      RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(45.0),
                              ))),
                        ),
                      ),
                    ),
                    PersonalDetails(),
                    AdditionalMetrics(),
                    HealthConditions(),
                    EmergencyContact(),
                  ],
                )
              ]))
            ],
          )),
    )));
  }
}
