// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ProfilePartPart extends StatefulWidget {
  @override
  _ProfilePartPartState createState() => _ProfilePartPartState();
}

class _ProfilePartPartState extends State<ProfilePartPart> {
  @override
  Widget build(BuildContext context) {
    List<String> rowIcon = [
      'assets/icons/userprofile.png',
      'assets/icons/bell.png',
      'assets/icons/group.png',
      'assets/icons/mydoctor.png',
    ];
    List<String> rowName = [
      'Lady Victoria',
      'Notifications',
      'Friends',
      'My Doctor',
    ];
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < 4; i++)
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: SizedBox(
                      height: 40.0,
                      width: 40.0,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Color(0xFF2BB9AD),
                        child: Padding(
                          padding: const EdgeInsets.all(0), // Border radius
                          child: ClipOval(child: Image.asset(rowIcon[i])),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: SizedBox(
                    child: Text(
                      rowName[i],
                      style: TextStyle(
                          color: Color(0xFF7A7A7A),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
