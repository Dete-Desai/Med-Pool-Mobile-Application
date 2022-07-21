// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class AppointmentCard extends StatefulWidget {
  @override
  _AppointmentCardState createState() => _AppointmentCardState();
}

class _AppointmentCardState extends State<AppointmentCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
      height: 150,
      width: double.maxFinite,
      child: Card(
        elevation: 5,
        child: Padding(
          padding: EdgeInsets.all(10),
          child: Stack(children: <Widget>[
            Align(
              alignment: Alignment.centerRight,
              child: Stack(
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.only(left: 10, top: 10),
                      child: Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Align(
                                  alignment: Alignment.center,
                                  child: SizedBox(
                                      height: 75.0,
                                      width: 75.0,
                                      child: CircleAvatar(
                                        radius: 45,
                                        backgroundColor: Color(0xFF2BB9AD),
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                              1), // Border radius
                                          child: ClipOval(
                                              child: Image.asset(
                                                  'assets/icons/information.png')),
                                        ),
                                      )),
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: SizedBox(
                                    child: Text(
                                      'Appointment:1',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(1.0),
                                  child: SizedBox(
                                      height: 25.0,
                                      width: 25.0,
                                      child: CircleAvatar(
                                        radius: 45,
                                        backgroundColor: Color(0xFF2BB9AD),
                                        child: Padding(
                                          padding: const EdgeInsets.all(
                                              1), // Border radius
                                          child: ClipOval(
                                              child: Image.asset(
                                                  'assets/icons/addition.png')),
                                        ),
                                      )),
                                ),
                              ],
                            ),
                          )
                        ],
                      ))
                ],
              ),
            )
          ]),
        ),
      ),
    );
  }
}
