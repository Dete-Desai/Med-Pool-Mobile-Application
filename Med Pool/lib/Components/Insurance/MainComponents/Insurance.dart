// ignore_for_file: file_names, use_key_in_widget_constructors, unused_element, sized_box_for_whitespace, unnecessary_const, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Views/InsuranceViews/CoveredMembersPage.dart';
import 'package:online_community_mobile_app/Views/InsuranceViews/MemberBalancePage.dart';
import 'package:online_community_mobile_app/Views/InsuranceViews/UtilizationPage.dart';

class Insurance extends StatefulWidget {
  @override
  _InsuranceState createState() => _InsuranceState();
}

class _InsuranceState extends State<Insurance> {
  Widget _navTab(String text) {
    return Tab(
      child: Container(
        width: 100,
        child: Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(
              child: Container(
                  child: Center(
                      child: Text(text, style: const TextStyle(fontSize: 17))),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(3),
                      border: const Border(
                          left: BorderSide(color: const Color(0xFF2BB9AD)),
                          right: BorderSide(color: const Color(0xFF2BB9AD)),
                          top: const BorderSide(color: Color(0xFF2BB9AD)),
                          bottom: BorderSide(color: Color(0xFF2BB9AD)))))),
        ]),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
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
                tabs: [
                  _navTab('Members'),
                  _navTab('Balance'),
                  _navTab('Utilization'),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            CoveredMembersPage(),
            MemberBalancePage(),
            UtilizationPage(),
          ],
        ),
      )),
    );
  }
}
