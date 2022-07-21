// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';

class HealthConditions extends StatefulWidget {

  @override
  _HealthConditionsState createState() => _HealthConditionsState();
}

class _HealthConditionsState extends State<HealthConditions> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
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
                 Padding(
              padding: const EdgeInsets.fromLTRB(5, 20, 10, 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Health Conditions",
                  style: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5,10,5,0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "Pre-Existing Conditions",
                    style: TextStyle(
                        color: Color.fromARGB(255, 104, 103, 103),
                        fontSize: 18,
                        //fontWeight: FontWeight.w600
                        ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextField(
              decoration: const InputDecoration(
                 enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                  ),
            border: UnderlineInputBorder(),
            ))
            ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5,10,5,0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "Allegy and Reactions",
                    style: TextStyle(
                        color: Color.fromARGB(255, 104, 103, 103),
                        fontSize: 18,
                        //fontWeight: FontWeight.w600
                        ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(4, 10, 4, 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: TextField(
              decoration: const InputDecoration(
                 enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                  ),
            border: UnderlineInputBorder(),
            ))
            ),
            ),
            
            ],
            ),
          )
        ],
      ),
    );
              }
}
