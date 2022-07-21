// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'UtilizationDetails.dart';

class Utilities extends StatefulWidget {
  @override
  _UtilitiesState createState() => _UtilitiesState();
}

class _UtilitiesState extends State<Utilities> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
            child: Text(
              "The Aga Khan Hospital",
              style: TextStyle(
                  color: Color(0xFF2BB9AD),
                  fontSize: 22,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          UtilizationDetails()
        ]));
  }
}
