// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:flutter/material.dart';
import '../SubComponents/CoveredMembersInsured.dart';

class CoveredMembers extends StatefulWidget {
  @override
  _CoveredMembersState createState() => _CoveredMembersState();
}

class _CoveredMembersState extends State<CoveredMembers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                    child: Text(
                      "COVERED MEMBERS",
                      style: TextStyle(
                          color: Color(0xFF2BB9AD),
                          fontSize: 22,
                          fontWeight: FontWeight.w600),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Divider(
                    color: Color(0xFF2BB9AD),
                    height: 4,
                    thickness: 2,
                  ),
                  CoveredMembersInsured(),
                ])));
  }
}
