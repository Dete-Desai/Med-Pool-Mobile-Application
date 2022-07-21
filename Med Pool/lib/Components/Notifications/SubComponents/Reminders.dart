// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/MainComponents/Queues.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/QueuesPage.dart';

class Reminders extends StatefulWidget {
  @override
  _RemindersState createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  void directToHomePage() =>
        Navigator.of(context, rootNavigator: true).pushNamed("/HomePage");

  @override
  Widget build(BuildContext context) {
     List<String> Message = [
      'Optician Appointment',
      'Specialist Appointment',
      'Dentist Appointment'
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
                InkWell(
                  onTap: () {
                    
                     Navigator.push(context, MaterialPageRoute(builder: (context) => QueuesPage()));

                  },
                  child: Card(
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
                  ),
                )
            ],
          )),
        ],
      )),
    );
  }
}

