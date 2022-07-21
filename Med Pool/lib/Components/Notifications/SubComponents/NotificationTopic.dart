// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_new, avoid_print, unused_label

import 'package:flutter/material.dart';
import 'AllNotifications.dart';
import 'Reminders.dart';

class NotificationTopic extends StatefulWidget {
  const NotificationTopic({Key? key}) : super(key: key);

  @override
  _NotificationTopicState createState() => _NotificationTopicState();
}

class _NotificationTopicState extends State<NotificationTopic> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: 500,
        child: DefaultTabController(
          length: 2,
          child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              bottom: TabBar(
                labelColor: Color(0xFF2BB9AD),
                indicatorColor: Color(0xFF2BB9AD),
                tabs: [
                  Tab(text: ('NOTIFICATIONS')),
                  Tab(text: ('REMINDERS')),
                ],
              ),
            ),
            body: TabBarView(
              children: [AllNotifications(), Reminders()],
            ),
          ),
        ),
      ),
    );
  }
}
