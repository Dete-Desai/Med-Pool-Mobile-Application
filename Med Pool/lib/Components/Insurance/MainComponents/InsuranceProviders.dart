// ignore_for_file: file_names, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/CoverBalances.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/CoverDetails.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/CoverMembers.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/InsuranceFilterBar.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/Utilizations.dart';

class InsuranceProviders extends StatefulWidget {
  @override
  _InsuranceProvidersState createState() => _InsuranceProvidersState();
}

class _InsuranceProvidersState extends State<InsuranceProviders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Card(
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                children: [
                  SizedBox(
                      height: 35.0,
                      width: 35.0,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Color(0xFF2BB9AD),
                        child: Padding(
                          padding: const EdgeInsets.all(2), // Border radius
                          child: ClipOval(
                              child: Image.asset('assets/icons/addition.png')),
                        ),
                      )),
                  Expanded(
                    child: const ListTile(
                      tileColor: Colors.white,
                      title: Text(
                        'Insurance Providers',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 15,
                            fontWeight: FontWeight.w800,
                            color: Colors.black),
                      ),
                      subtitle: Text('My Insurance Provider',
                          style: TextStyle(
                              fontStyle: FontStyle.normal,
                              fontSize: 14,
                              color: Color(0xFF979797))),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              color: Colors.black,
              height: 4,
            ),
            InsuranceFilterBar(),
            CoverDetails(),
            CoverMembers(),
            CoverBalances(),
            Utilizations()
          ]),
        ),
      ),
    );
  }
}
