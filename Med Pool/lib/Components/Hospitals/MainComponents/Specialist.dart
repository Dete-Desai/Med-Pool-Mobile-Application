// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/SpecialistResults.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/SpecialistSearchForm.dart';

class Specialist extends StatefulWidget {
  @override
  _SpecialistState createState() => _SpecialistState();
}

class _SpecialistState extends State<Specialist> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        SizedBox(
                            height: 35.0,
                            width: 35.0,
                            child: CircleAvatar(
                              radius: 45,
                              backgroundColor: Color(0xFF2BB9AD),
                              child: Padding(
                                padding:
                                    const EdgeInsets.all(2), // Border radius
                                child: ClipOval(
                                    child: Image.asset(
                                        'assets/icons/nephrologist.png')),
                              ),
                            )),
                        Expanded(
                          child: const ListTile(
                            tileColor: Colors.white,
                            title: Text(
                              'Specialists',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            subtitle: Text('Medical Specialists',
                                style: TextStyle(
                                    fontStyle: FontStyle.normal,
                                    fontSize: 14,
                                    color: Color(0xFF979797))),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    color: Colors.black,
                    height: 4,
                  ),
                  SpecialistSearchForm(),
                  SpecialistResults()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
