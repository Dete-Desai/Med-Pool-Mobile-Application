// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Home/SubComponents/ArticlesCards.dart';

class Articles extends StatefulWidget {
  @override
  _ArticlesState createState() => _ArticlesState();
}

class _ArticlesState extends State<Articles> {
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
                      'Articles',
                      style: TextStyle(color: Color(0xFF2BB9AD)),
                    ),
                  ),
                ],
              )),
              backgroundColor: Color(0xFFFFFFFF),
            ),
            body: SingleChildScrollView(child: ArticlesCards())));
  }
}
