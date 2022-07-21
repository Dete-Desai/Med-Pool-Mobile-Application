// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/HospitalSearchPage.dart';

import '../SubComponents/AppointmentForm.dart';

class Appointment extends StatefulWidget {
  @override
  _AppointmentState createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  @override
  Widget build(BuildContext context) {
    void directToHospitalSearchPage() => Navigator.pop(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(children: [
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            directToHospitalSearchPage();
                          },
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                  child: Image.asset('assets/icons/back.png'),
                                  height: 60,
                                  width: 60)),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        SizedBox(
                            height: 35.0,
                            width: 35.0,
                            child: CircleAvatar(
                              radius: 45,
                              backgroundColor: Color(0xFF2BB9AD),
                              child: Padding(
                                padding:
                                    const EdgeInsets.all(2), // Border radius
                                child: ClipOval(
                                    child: Image.asset(
                                        'assets/icons/hospital.png')),
                              ),
                            )),
                        Expanded(
                          child: const ListTile(
                            tileColor: Colors.white,
                            title: Text(
                              'Facilities',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            subtitle: Text('Appointment Form',
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
                  AppointmentForm(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
