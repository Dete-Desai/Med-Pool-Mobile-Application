// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import '../SubComponents/Balance.dart';

class MemberBalance extends StatefulWidget {
  @override
  _MemberBalanceState createState() => _MemberBalanceState();
}

class _MemberBalanceState extends State<MemberBalance> {
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
                      "MEMBER BALANCE",
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
                  Balance(),
                ])));
  }
}
