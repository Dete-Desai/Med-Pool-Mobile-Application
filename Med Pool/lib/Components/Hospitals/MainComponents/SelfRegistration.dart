// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, unused_import, use_key_in_widget_constructors

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/SelfRegistrationForm.dart';

import '../SubComponents/CategoryType.dart';

class SelfRegistration extends StatefulWidget {
  @override
  _SelfRegistrationState createState() => _SelfRegistrationState();
}

class _SelfRegistrationState extends State<SelfRegistration> {
  @override
  Widget build(BuildContext context) {
    void directToHospitalSearchPage() =>
        Navigator.pushNamed(context, 'HospitalSearchPage');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: ListView(children: [
            Card(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        InkWell(
                          onTap: () {
                            directToHospitalSearchPage();
                          },
                          child: Container(
                              alignment: Alignment.topLeft,
                              child: SizedBox(
                                  child: Image.asset('assets/icons/back.png'),
                                  height: 60,
                                  width: 60)),
                        ),
                      ],
                    ),
                  ),
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
                                padding:
                                    const EdgeInsets.all(2), // Border radius
                                child: ClipOval(
                                    child: Image.asset(
                                        'assets/icons/hospital.png')),
                              ),
                            )),
                        Expanded(
                          child: const ListTile(
                            tileColor: Colors.white,
                            title: Text(
                              'Facilities',
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 15,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black),
                            ),
                            subtitle: Text('Patient Self Registration',
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
                  SelfRegistrationForm(),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
