// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Views/AuthenticationViews/DoctorProfilePage.dart';

import '../../../Views/HospitalsViews/AppointPage.dart';

class SpecialistResults extends StatefulWidget {
  @override
  _SpecialistResultsState createState() => _SpecialistResultsState();
}

class _SpecialistResultsState extends State<SpecialistResults> {
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    List<String> drName = [
      "Dr Fred Oywer",
      "Dr Daisy Kamau",
      "Dr Purity Njagi"
    ];
    List<String> hospitalName = [
      "The Nairobi Hospital",
      "The Matter Hospital",
      "The Aga Khan Hospital"
    ];
    List<String> buttonName = ["Book Appointment"];

    void directToAppointment() => Navigator.push(
        context, MaterialPageRoute(builder: (context) => DoctorProfilePage()));
    return Container(
      // padding: const EdgeInsets.all(8.0),
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
          for (var i = 0; i < 3; i++)
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
                                  child:
                                      Image.asset('assets/icons/mydoctor.png')),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            tileColor: Colors.white,
                            title: Text(
                              drName[i],
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            subtitle: Text(hospitalName[i],
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xFF979797))),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(65, 0, 30, 5),
                    child: Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
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
                                directToAppointment();
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
