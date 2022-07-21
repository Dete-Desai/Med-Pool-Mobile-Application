// ignore_for_file: use_key_in_widget_constructors, prefer_final_fields, sized_box_for_whitespace, annotate_overrides, prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class AdditionalMetrics extends StatefulWidget {
  @override
  _AdditionalMetricsState createState() => _AdditionalMetricsState();
}

class _AdditionalMetricsState extends State<AdditionalMetrics> {
  bool _status = true;
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 330,
        child: Card(
          color: Color(0xFFF8F8F8),
          //elevation: 8.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Row(
                  children: [
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    // ignore: prefer_const_constructors
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 14, 5),
                                      child: SizedBox(
                                        height: 10,
                                        width: 35,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFF2BB9AD)),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFF2BB9AD)),
                                            ),
                                          ),
                                          enabled: _status,
                                        ),
                                      ),
                                    ),
                                    // ignore: prefer_const_constructors
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 5),
                                      child: Text("Years"),
                                    ),
                                  ]),
                              Container(
                                // ignore: prefer_const_constructors
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 15, 14, 10),
                                  child: Text(
                                    "Age",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 104, 103, 103),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 20),
                          VerticalDivider(
                            color: Color(0xFF2BB9AD),
                            thickness: 1,
                          ),
                          Column(
                            children: [
                              Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    // ignore: prefer_const_constructors
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          30, 10, 14, 5),
                                      child: SizedBox(
                                        height: 10,
                                        width: 40,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFF2BB9AD)),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFF2BB9AD)),
                                            ),
                                          ),
                                          enabled: _status,
                                        ),
                                      ),
                                    ),
                                    // ignore: prefer_const_constructors
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 5),
                                      child: Text("cm"),
                                    ),
                                  ]),
                              Container(
                                // ignore: prefer_const_constructors
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 15, 14, 10),
                                  child: Text(
                                    "Height",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 104, 103, 103),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Divider(
                  color: Color(0xFF2BB9AD),
                  thickness: 1,
                ),
                Row(
                  children: [
                    IntrinsicHeight(
                      child: Row(
                        children: [
                          Column(
                            children: [
                              Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    // ignore: prefer_const_constructors
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          10, 10, 10, 5),
                                      child: SizedBox(
                                        height: 10,
                                        width: 35,
                                        child: TextField(
                                          keyboardType: TextInputType.number,
                                          decoration: const InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFF2BB9AD)),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFF2BB9AD)),
                                            ),
                                          ),
                                          enabled: _status,
                                        ),
                                      ),
                                    ),
                                    // ignore: prefer_const_constructors
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          12, 10, 8, 5),
                                      child: Text("Kg"),
                                    ),
                                  ]),
                              Container(
                                // ignore: prefer_const_constructors
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(10, 15, 14, 10),
                                  child: Text(
                                    "Weight",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 104, 103, 103),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 40),
                          // ignore: prefer_const_constructors
                          VerticalDivider(
                            color: const Color(0xFF2BB9AD),
                            thickness: 1,
                          ),
                          Column(
                            children: [
                              Row(
                                  // ignore: prefer_const_literals_to_create_immutables
                                  children: [
                                    // ignore: prefer_const_constructors
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          30, 10, 0, 5),
                                      child: SizedBox(
                                        height: 10,
                                        width: 45,
                                        child: TextField(
                                          keyboardType: TextInputType.text,
                                          decoration: const InputDecoration(
                                            enabledBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFF2BB9AD)),
                                            ),
                                            focusedBorder: UnderlineInputBorder(
                                              borderSide: BorderSide(
                                                  color: Color(0xFF2BB9AD)),
                                            ),
                                          ),
                                          enabled: _status,
                                        ),
                                      ),
                                    ),
                                    // ignore: prefer_const_constructors
                                    Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          8, 10, 2, 5),
                                      child: Text("ve"),
                                    ),
                                  ]),
                              Container(
                                // ignore: prefer_const_constructors
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(24, 15, 2, 10),
                                  child: Text(
                                    "Blood Group",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 104, 103, 103),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(width: 70),
                        ],
                      ),
                    )
                  ],
                ),
              ]),
        ));
  }
}
