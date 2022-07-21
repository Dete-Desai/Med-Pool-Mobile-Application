// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/SelfDetails.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/SpouseDetails.dart';
import 'ChildDetails.dart';

class CoveredMembersInsured extends StatefulWidget {
  @override
  _CoveredMembersInsuredState createState() => _CoveredMembersInsuredState();
}

class _CoveredMembersInsuredState extends State<CoveredMembersInsured> {
  @override
  Widget build(BuildContext context) {
    // return Card(
    //     child: Column(children: [
    //   Padding(
    //     padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
    //     child: Text(
    //       "Covered Members",
    //       style: TextStyle(
    //           color: Color(0xFF2BB9AD),
    //           fontSize: 22,
    //           fontWeight: FontWeight.w600),
    //       textAlign: TextAlign.center,
    //     ),
    //   ),
    //   Divider(
    //     color: Color(0xFF2BB9AD),
    //     height: 4,
    //     thickness: 2,
    //   ),
    //   SelfDetails(),
    //   SpouseDetails(),
    //   ChildDetails(),
    // ]));
    return SizedBox(
      height: 500,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            bottom: TabBar(
              labelColor: Color(0xFF2BB9AD),
              indicatorColor: Color(0xFF2BB9AD),
              tabs: [
                Tab(text: ('SELF\nDETAILS')),
                Tab(text: ('SPOUSE\nDETAILS')),
                Tab(text: ('CHILD\nDETAILS')),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              SelfDetails(),
              SpouseDetails(),
              ChildDetails(),
            ],
          ),
        ),
      ),
    );
  }
}
