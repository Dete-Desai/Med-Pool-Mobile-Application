// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, unused_element
import 'dart:math';
import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../../../Views/Notifications/NotificationsPage.dart';
import '../../../Controllers//APIs//Articles/ArticlesRequest.dart';
import 'package:online_community_mobile_app/Components/Home/SubComponents/TopicArticles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    void directToNotificationsPage() => Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => NotificationsPage()),
        );
    // Navigator.of(context, rootNavigator: true)
    //     .pushNamed("/NotificationsPage");
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Material(
          child: Row(
            children: [
              Text(
                "Online Community",
                style: TextStyle(
                  color: Color(0xFF2BB9AD),
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(width: 150),
              Icon(
                Icons.search_rounded,
                color: Color(0xFF2BB9AD),
              ),
              SizedBox(width: 10),
              InkWell(
                onTap: () => directToNotificationsPage(),
                child: Icon(
                  Icons.notifications_rounded,
                  color: Color(0xFF2BB9AD),
                ),
              )
            ],
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xFFF8F8F8),
      ),
      body: ListView(
        shrinkWrap: true,
        children: [
          // Card(
          //   child: Column(
          //     children: [TopNews()],
          //   ),
          // ),
          // Card(
          //   child: Column(
          //     children: [LocalEvents()],
          //   ),
          // ),
          Card(
            child: Column(
              children: [
                GraphQLProvider(
                    client: ArticlesRequest.articlesToQuery(),
                    child: TopicArticles())
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
