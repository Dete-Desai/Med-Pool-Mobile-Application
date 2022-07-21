// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/PatientRecords/SubComponents/PatientReportsDetails.dart';

class PatientRecordsReport extends StatefulWidget {
  @override
  _PatientRecordsReportState createState() => _PatientRecordsReportState();
}

class _PatientRecordsReportState extends State<PatientRecordsReport> {
  @override
  Widget build(BuildContext context) {
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
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                              child: Image.asset('assets/icons/back.png'),
                              height: 60,
                              width: 60)),
                    ),
                  ),
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
                            child: Image.asset('assets/icons/patient-two.png')),
                      ),
                    )),

                        Expanded(
                          child: const ListTile(
                            tileColor: Colors.white,
                            title: Text(
                              'Patient Records Report',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            subtitle: Text('My Recent Records',
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color.fromARGB(255, 83, 82, 82))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 4,
                  ),
                  PatientReportsDetails(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
