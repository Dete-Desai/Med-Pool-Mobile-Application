// ignore_for_file: file_names, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/More/MainComponents/BookmarksPart.dart';
import 'package:online_community_mobile_app/Components/More/MainComponents/ExtrasPart.dart';
import 'package:online_community_mobile_app/Components/More/MainComponents/HelpPart.dart';
import 'package:online_community_mobile_app/Components/More/MainComponents/ProfilePart.dart';

class More extends StatefulWidget {
  @override
  _MoreState createState() => _MoreState();
}

class _MoreState extends State<More> {
  void directToLogin() =>
      Navigator.of(context, rootNavigator: true).pushNamed('/LoginPage');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 20, 10, 10),
                  child: SizedBox(
                    child: Text(
                      'More',
                      style: TextStyle(
                          color: Color(0xFF2BB9AD),
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
                Spacer(
                  flex: 1,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 20, 10),
                  child: InkWell(
                    onTap: (() => directToLogin()),
                    child: SizedBox(
                        height: 35.0,
                        width: 35.0,
                        child: CircleAvatar(
                          radius: 45,
                          backgroundColor: Color(0xFF2BB9AD),
                          child: Padding(
                            padding: const EdgeInsets.all(2), // Border radius
                            child: ClipOval(
                                child: Image.asset('assets/icons/logout.png')),
                          ),
                        )),
                  ),
                ),
              ],
            ),
            Divider(
              color: Color(0xFF575757),
              height: 4,
            ),
            ProfilePartPart(),
            Divider(
              color: Color(0xFF999999),
              height: 4,
            ),
            ExtrasPart(),
            Divider(
              color: Color(0xFF999999),
              height: 4,
            ),
            BookmarksPart(),
            Divider(
              color: Color(0xFF999999),
              height: 4,
            ),
            HelpPart()
          ],
        ),
      ),
    ));
  }
}
