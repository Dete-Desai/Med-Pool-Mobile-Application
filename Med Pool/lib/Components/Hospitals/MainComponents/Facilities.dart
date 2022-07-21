// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/FacilitiesNearMe.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/RecentFacilities.dart';

class Facilities extends StatefulWidget {
  @override
  _FacilitiesState createState() => _FacilitiesState();
}

class _FacilitiesState extends State<Facilities> {
  @override
  Widget build(BuildContext context) {
    void directToHospitalSearchPage() =>
        Navigator.of(context, rootNavigator: true)
            .pushNamed("/HospitalSearchPage");
    return Container(
      child: SingleChildScrollView(
        child: Column(
          children: [
            RecentFacilities(),
            FacilitiesNearMe(),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                child: const Text(
                  "Filter",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  directToHospitalSearchPage();
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF2BB9AD),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
