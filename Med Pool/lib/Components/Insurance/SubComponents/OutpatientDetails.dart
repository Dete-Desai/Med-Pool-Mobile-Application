// ignore_for_file: file_names, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class OutpatientDetails extends StatefulWidget {
  @override
  _OutpatientDetailsState createState() => _OutpatientDetailsState();
}

class _OutpatientDetailsState extends State<OutpatientDetails> {
  @override
  Widget build(BuildContext context) {
    List<String> subject = ['Name:','Member No:','Allocation:', 'Expenditure:', 'Balance:'];
    List<String> feedback = ['Hezrah Martinez','008','10,000 Ksh', '2,575 ksh', '7,425 Ksh'];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Outpatient Balance",
                  style: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
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
