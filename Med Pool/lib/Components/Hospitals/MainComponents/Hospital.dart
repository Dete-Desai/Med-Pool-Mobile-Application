// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unused_element, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/MainComponents/Facilities.dart';
import 'package:online_community_mobile_app/Components/Hospitals/MainComponents/Specialist.dart';

class Hospital extends StatefulWidget {
  @override
  _HospitalState createState() => _HospitalState();
}

class _HospitalState extends State<Hospital> {
  Widget _navTab(String text) {
    return Tab(
      child: Container(
        width: 100,
        child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
              child: Container(
                  child:
                      Center(child: Text(text, style: TextStyle(fontSize: 17))),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: Border(
                          left: BorderSide(color: Color(0xFF2BB9AD)),
                          right: BorderSide(color: Color(0xFF2BB9AD)),
                          top: BorderSide(color: Color(0xFF2BB9AD)),
                          bottom: BorderSide(color: Color(0xFF2BB9AD)))))),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            new SliverAppBar(
              title: Text('Online Community'),
              pinned: true,
              floating: false,
              backgroundColor: Color(0xFFFFFFFF),
              bottom: TabBar(
                isScrollable: true,
                labelPadding: EdgeInsets.all(0),
                indicatorColor: Color(0xFF5CFFF1),
                labelColor: Colors.black,
                unselectedLabelColor: Color(0xFF757575),
                indicatorWeight: 0,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(2),
                        topRight: Radius.circular(2)),
                    color: Color(0xFFDBDBDB)),
                tabs: [_navTab('Facilities'), _navTab('Specialists')],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[Facilities(), Specialist()],
        ),
      )),
    );
  }
}
