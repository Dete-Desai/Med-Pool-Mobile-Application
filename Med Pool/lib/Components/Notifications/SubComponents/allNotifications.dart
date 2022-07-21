// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, non_constant_identifier_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AllNotifications extends StatefulWidget {
  @override
  _AllNotificationsState createState() => _AllNotificationsState();
}

class _AllNotificationsState extends State<AllNotifications> {
  @override
  Widget build(BuildContext context) {
    List<String> Message = [
      'Long Mid-Term Holiday Announcement',
      'Change in Hospital Management',
      'Scheduled portal maintanance for the IT systems. For any enquiries please reach out via: info@materhospital.com'
    ];
    List<String> Hospital = [
      'The Karen Hospital',
      'The Nairobi Hospital',
      'The Aga Khan Hospital'
    ];
    return Container(
      child: Card(
        //color: Color(0xFFF8F8F8),
          child: Column(
        children: [
          Padding(
                padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  "22 Thur - 02 Feb - 2022",
                  style: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontSize: 15,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
          Card(
              child: Column(
            children: [
              for (var i = 0; i < 3; i++)
                Card(
                  color: Color(0xFFF8F8F8),
                  child: Row(
                    children: [
                       Padding(
                         padding: const EdgeInsets.all(8.0),
                         child: SizedBox(
                    height: 35.0,
                    width: 35.0,
                    child: CircleAvatar(
                      radius: 45,
                      backgroundColor: Color(0xFF2BB9AD),
                      child: Padding(
                          padding: const EdgeInsets.all(2), // Border radius
                          child: ClipOval(
                              child: Image.asset('assets/icons/hospital.png')),
                      ),
                    )),
                       ),
                      Expanded(
                        child: Container(
                          color: Color(0xFFF8F8F8),
                          child: ListTile(
                            tileColor: Colors.white,
                            title: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(
                                Hospital[i],
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 16,
                                    color: Colors.black),
                              ),
                            ),
                            subtitle: Padding(
                              padding: const EdgeInsets.all(4.0),
                              child: Text(Message[i],
                                  style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Color(0xFF979797))),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Text(
                            '12:55 PM',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              color: Color(0xFF2BB9AD),
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
            ],
          )),
        ],
      )),
    );
  }
}
