// ignore_for_file: prefer_const_literals_to_create_immutables, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

import '../SubComponents/PositionedCard.dart';

class DoctorProfile extends StatefulWidget {
  @override
  _DoctorProfileState createState() => _DoctorProfileState();
}

class _DoctorProfileState extends State<DoctorProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: 900,
          child: Stack(
            children: [
              Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                        alignment: Alignment.bottomLeft,
                        child: SizedBox(
                            child: Image.asset('assets/icons/back.png'),
                            height: 60,
                            width: 60)),
                  ),
                  Expanded(
                    flex: 5,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.asset('assets/images/doctor.jpg'),
                        height: 250,
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 5,
                    child: Container(
                      color: Colors.grey[200],
                      child: Center(
                          child: Card(
                              margin: const EdgeInsets.fromLTRB(
                                  0.0, 40.0, 0.0, 0.0),
                              child: Container(
                                  width: 500.0,
                                  height: 280.0,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.fromLTRB(5, 35, 5, 8),
                                            child: const Text(
                                              "About",
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(4.0),
                                                child: const Text(
                                                  "Dr Fred Owyer is an expreienced and respected specialist with over ten years experience in his line of work.",
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 12.0,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(5),
                                            child: const Text(
                                              "Working Hours",
                                              style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.w800,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 10.0,
                                          ),
                                          Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.all(4.0),
                                                child: const Text(
                                                  "8.00 am - 5.00 pm\nExcluding Weekends and Public Holidays.",
                                                  style: TextStyle(
                                                    fontSize: 16.0,
                                                    color: Colors.grey,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ]),
                                  )))),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2),
                    child: SizedBox(
                      height: 50,
                      width: 250,
                      child: ElevatedButton(
                        child: const Text(
                          "Book Appointment",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 25.0,
                            color: Colors.white,
                          ),
                        ),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .pushNamed('/AppointmentPage');
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                const Color(0xFF2BB9AD)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(45.0),
                            ))),
                      ),
                    ),
                  ),
                ],
              ),
              PositionedCard()
            ],
          ),
        ),
      ),
    );
  }
}
