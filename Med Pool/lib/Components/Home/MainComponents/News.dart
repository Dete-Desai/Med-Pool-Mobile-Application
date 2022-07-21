// ignore_for_file: unnecessary_new, prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Home/SubComponents/NewsCards.dart';

class News extends StatefulWidget {
  @override
  _NewState createState() => _NewState();
}

class _NewState extends State<News> {
  @override
  Widget build(BuildContext context) {
    void directToHomeScreen() =>
        Navigator.of(context, rootNavigator: true).pushNamed("/HomePage");
    return Scaffold(
        appBar: AppBar(
          leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back,
                color: Color(0xFF2BB9AD),
              ),
              onPressed: () {
                directToHomeScreen();
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
                  'Top News Today',
                  style: TextStyle(color: Color(0xFF2BB9AD)),
                ),
              ),
            ],
          )),
          backgroundColor: Color(0xFFFFFFFF),
        ),
        body: SingleChildScrollView(child: NewsCards()));
  }
}
