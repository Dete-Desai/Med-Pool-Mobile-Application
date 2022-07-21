// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/FacilityRecordsReportPage.dart';

import '../../../Views/HospitalsViews/FacilityRecordsViewMoreReportPage.dart';
import '../../../Views/PatientRecordsViews/PatientRecordsReportViewMorePage.dart';

class RecentFacilities extends StatefulWidget {
  @override
  _RecentFacilitiesState createState() => _RecentFacilitiesState();
}

class _RecentFacilitiesState extends State<RecentFacilities> {
  @override
  Widget build(BuildContext context) {
    List<String> Date = [
      '13 Sun - 03 March - 2022',
      '25 Fri - 02 Feb - 2022',
      '31 Mon - 01 Jan - 2022'
    ];
    List<String> Hospital = [
      'The Karen Hospital',
      'The Nairobi Hospital',
      'The Aga Khan Hospital'
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
                            child: Image.asset('assets/icons/addition.png')),
                      ),
                    )),
                Expanded(
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: Text(
                      'Recent Facilities',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    subtitle: Text('My Recent Hospital Facilities',
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
                                      'assets/icons/hospital-buildings.png')),
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
                                Hospital[i],
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(Date[i],
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
                                    FacilityRecordsViewMoreReportPage())),
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
            child: InkWell(
              onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FacilityRecordsReportPage())),
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
          )
        ],
      )),
    );
  }
}
