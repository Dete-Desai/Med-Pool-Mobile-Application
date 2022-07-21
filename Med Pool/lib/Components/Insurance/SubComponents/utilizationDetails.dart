// ignore_for_file: file_names, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class UtilizationDetails extends StatefulWidget {
  @override
  _UtilizationDetailsState createState() => _UtilizationDetailsState();
}

class _UtilizationDetailsState extends State<UtilizationDetails> {
  @override
  Widget build(BuildContext context) {
    List<String> subject = ['Name:','Member No:','Service:', 'Date:', 'Cost:'];
    List<String> feedback = ['Hezrah Martinez','008','OutPatient Dental', '18th March 2022', '5,638 Ksh'];
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          children: [
            Card(
              color: Color(0xFFF8F8F8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
              child: Column(
                children: [
                  for (var i = 0; i < 5; i++)
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text(
                            subject[i],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text(
                              feedback[i],
                              style: TextStyle(
                                color: Color(0xFF474747),
                                fontSize: 20,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
