// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unused_local_variable

import 'package:flutter/material.dart';

class HospitalResults extends StatefulWidget {
  @override
  _HospitalResultsState createState() => _HospitalResultsState();
}

class _HospitalResultsState extends State<HospitalResults> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<String> hospitalName = ["The Nairobi Hospital", "The Matter Hospital"];
    List<String> buttonName = ["Book Appointment"];
    List<String> route = ["/AppointmentPage"];
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Align(
              alignment: Alignment.center,
              child: Text('Your Results',
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w700)),
            ),
          ),
          for (var i = 0; i < 2; i++)
            Card(
              color: Color(0xFFF9F9F9),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(15),
                topRight: Radius.circular(15),
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              )),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          height: 45.0,
                          width: 45.0,
                          child: CircleAvatar(
                            radius: 45,
                            backgroundColor: Colors.transparent,
                            child: Padding(
                              padding: const EdgeInsets.all(0), // Border radius
                              child: ClipOval(
                                  child: Image.asset(
                                      'assets/icons/hospitalbuildings1.png')),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            hospitalName[i],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 0, 30, 5),
                    child: Row(
                      children: [
                        for (var j = 0; j < 1; j++)
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 5, 8),
                              child: ElevatedButton(
                                child: Text(
                                  buttonName[0],
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 15.0,
                                    color: Colors.white,
                                  ),
                                ),
                                onPressed: () {
                                  Navigator.pushNamed(context, route[0]);
                                },
                                style: ElevatedButton.styleFrom(
                                  primary: Color(0xFF2BB9AD),
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 30, vertical: 10),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
        ],
      ),
    );
  }
}
