// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class HelpPart extends StatefulWidget {
  @override
  _HelpPartState createState() => _HelpPartState();
}

class _HelpPartState extends State<HelpPart> {
  @override
  Widget build(BuildContext context) {
    List<String> rowIcon = [
      'assets/icons/info.png',
      'assets/icons/feedback.png',
      'assets/icons/peace.png',
      'assets/icons/settings.png',
      'assets/icons/faqs.png',
    ];
    List<String> rowName = ['About', 'Feedback', 'Help', 'Settings', 'FAQs'];
    List<String> rowRoute = ['/', '/', '/', '/', '/FAQsPage'];
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < 5; i++)
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
                InkWell(
                  onTap: (() {
                    Navigator.of(context, rootNavigator: true)
                        .pushNamed(rowRoute[i]);
                  }),
                  child: Padding(
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
                ),
              ],
            ),
        ],
      ),
    );
  }
}
