// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Home/SubComponents/EventsCards.dart';

class Events extends StatefulWidget {
  @override
  _EventsState createState() => _EventsState();
}

class _EventsState extends State<Events> {
  @override
  Widget build(BuildContext context) {
    void directToHomePage() =>
        Navigator.of(context, rootNavigator: true).pushNamed("/HomePage");
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              leading: new IconButton(
                  icon: new Icon(
                    Icons.arrow_back,
                    color: Color(0xFF2BB9AD),
                  ),
                  onPressed: () {
                    directToHomePage();
                  }),
              title: Center(
                  child: Row(
                children: [
                  Tab(
                    icon: Image.asset('assets/icons/news.png',
                        width: 30.0, height: 30.0),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                    child: Text(
                      'Local Events Around You',
                      style: TextStyle(color: Color(0xFF2BB9AD)),
                    ),
                  ),
                ],
              )),
              backgroundColor: Color(0xFFFFFFFF),
            ),
            body: EventsCards()));
  }
}
