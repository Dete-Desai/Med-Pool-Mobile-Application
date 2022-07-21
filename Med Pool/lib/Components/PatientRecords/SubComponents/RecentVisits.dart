// ignore_for_file: unnecessary_const, prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_new, non_constant_identifier_names, unused_local_variable

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Views/PatientRecordsViews/PatientRecordsReportViewMorePage.dart';

import '../../../Views/PatientRecordsViews/PatientRecordsReportPage.dart';

class RecentVisits extends StatefulWidget {
  @override
  _RecentVisitsState createState() => _RecentVisitsState();
}

class _RecentVisitsState extends State<RecentVisits> {
  @override
  Widget build(BuildContext context) {
    List<String> Date = [
      '24 Thu - 02 Feb - 2022',
      '24 Thu - 02 Feb - 2022',
      '24 Thu - 02 Feb - 2022'
    ];
    List<String> Hospital = [
      'The Agakhan Hospital',
      'The Nairobi Hospital',
      'The Matter Hospital'
    ];
    return Container(
      child: Card(
          child: Column(
        children: [
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
                        padding: const EdgeInsets.all(2), // Border radius
                        child: ClipOval(
                            child: Image.asset('assets/icons/information.png')),
                      ),
                    )),
                Expanded(
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: const Text(
                      'Health Records',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    subtitle: const Text('My Recent Hospital Appointments',
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
          Card(
              child: Column(
            children: [
              for (var i = 0; i < 3; i++)
                Card(
                  color: Color(0xFFF8F8F8),
                  child: Row(
                    children: [
                      SizedBox(
                          height: 35.0,
                          width: 35.0,
                          child: CircleAvatar(
                            radius: 45,
                            backgroundColor: Color(0xFF2BB9AD),
                            child: Padding(
                              padding: const EdgeInsets.all(1), // Border radius
                              child: ClipOval(
                                  child: Image.asset(
                                      'assets/icons/information.png')),
                            ),
                          )),
                      Expanded(
                        child: Container(
                          color: Color(0xFFF8F8F8),
                          child: ListTile(
                            tileColor: Colors.white,
                            title: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                Date[i],
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(Hospital[i],
                                  style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xFF979797))),
                            ),
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    PatientRecordsReportViewMorePage())),
                        child: SizedBox(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Details ...',
                              style: TextStyle(
                                fontSize: 17,
                                fontWeight: FontWeight.w800,
                                color: Color(0xFF2BB9AD),
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ],
          )),
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(143, 5, 143, 5),
              child: InkWell(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PatientRecordsReportPage())),
                child: Text(
                  'View More',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.w800,
                    color: Color(0xFF2BB9AD),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          )
        ],
      )),
    );
  }
}
