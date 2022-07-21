// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/HNMLocation.dart';

class FacilitiesNearMe extends StatefulWidget {
  @override
  _FacilitiesNearMeState createState() => _FacilitiesNearMeState();
}

class _FacilitiesNearMeState extends State<FacilitiesNearMe> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          child: Column(
        children: [
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
                      'Facilities Near Me',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    subtitle: Text('Health facilities on location of choice',
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
          HNMLocation(),
          const SizedBox(height: 30.0),
        ],
      )),
    );
  }
}
