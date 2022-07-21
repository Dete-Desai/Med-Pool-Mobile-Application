// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'PatientRecordsViewMoreDetails.dart';

class PatientRecordsViewMoreTopic extends StatefulWidget {
  @override
  _PatientRecordsViewMoreTopicState createState() =>
      _PatientRecordsViewMoreTopicState();
}

class _PatientRecordsViewMoreTopicState
    extends State<PatientRecordsViewMoreTopic> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
        child: Text(
          "Patient Records",
          style: TextStyle(
              color: Color(0xFF2BB9AD),
              fontSize: 22,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
      Divider(
        color: Color(0xFF2BB9AD),
        height: 4,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 30, 10, 5),
        child: Text(
          "Recent Visits",
          style: TextStyle(
              color: Color(0xFF2BB9AD),
              fontSize: 22,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
      PatientRecordsViewMoreDetails()
    ]));
  }
}
