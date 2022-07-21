// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../SubComponents/Utilities.dart';

class Utilization extends StatefulWidget {
  @override
  _UtilizationState createState() => _UtilizationState();
}

class _UtilizationState extends State<Utilization> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                child: Text(
                  "UTILIZATION",
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
              Utilities(),
            ])));
  }
}
