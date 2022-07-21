// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'FacilityRecordsViewMoreDetails.dart';

class FacilityRecordsViewMoreTopic extends StatefulWidget {
  @override
  _FacilityRecordsViewMoreTopicState createState() =>
      _FacilityRecordsViewMoreTopicState();
}

class _FacilityRecordsViewMoreTopicState
    extends State<FacilityRecordsViewMoreTopic> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
        child: Text(
          "Facility Records",
          style: TextStyle(
              color: Color(0xFF2BB9AD),
              fontSize: 25,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
      Divider(
        color: Color(0xFF2BB9AD),
        height: 4,
        thickness: 2,
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 25, 10, 5),
        child: Text(
          "Recent Visits",
          style: TextStyle(
              color: Color(0xFF2BB9AD),
              fontSize: 22,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
      FacilityRecordsViewMoreDetails(),
      Padding(
        padding: const EdgeInsets.fromLTRB(80, 20, 80, 10),
        child: SizedBox(
          height: 50,
          width: 250,
          child: ElevatedButton(
            child: const Text(
              "Book Apppointment",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 20.0,
                color: Colors.white,
              ),
            ),
            onPressed: () {
              Navigator.of(context, rootNavigator: true)
                              .pushNamed('/AppointmentPage');
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Color(0xFF2BB9AD)),
                shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(45.0),
                ))),
          ),
        ),
      ),
    ]));
  }
}
