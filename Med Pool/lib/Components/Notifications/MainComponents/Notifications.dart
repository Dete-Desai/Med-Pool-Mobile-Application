// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Views/Home/HomePage.dart';

import '../SubComponents/NotificationTopic.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => HomePage()),
                        );
                      },
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                              child: Image.asset('assets/icons/back.png'),
                              height: 60,
                              width: 60)),
                    ),
                  ),
                  Card(child: NotificationTopic()),
                ])));
  }
}
