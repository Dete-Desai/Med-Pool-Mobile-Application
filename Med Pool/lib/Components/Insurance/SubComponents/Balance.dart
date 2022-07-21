// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/InPatientDetails.dart';
import 'AllBalance.dart';
import 'OutpatientDetails.dart';

class Balance extends StatefulWidget {
  @override
  _BalanceState createState() => _BalanceState();
}

class _BalanceState extends State<Balance> {
  @override
  Widget build(BuildContext context) {
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
                Tab(text: ('OUTPATIENT\nBALANCE')),
                Tab(text: ('INPATIENT\nBALANCE')),
                Tab(text: ('ALL\nBALANCE')),
              ],
            ),
          ),
          body: TabBarView(
            children: [OutpatientDetails(), InpatientDetails(), AllBalance()],
          ),
        ),
      ),
    );
  }
}
