// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new, prefer_final_fields, use_key_in_widget_constructors

import 'package:flutter/material.dart';

import '../MainComponents/ChangePasswordForm.dart';

class PersonalDetails extends StatefulWidget {
  @override
  _PersonalDetailsState createState() => _PersonalDetailsState();
}

class _PersonalDetailsState extends State<PersonalDetails> {
  bool _status = true;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(children: [
          Card(
              color: Color(0xFFF8F8F8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "First Name",
                          style: TextStyle(
                            color: Color.fromARGB(255, 104, 103, 103),
                            fontSize: 18,
                            //fontWeight: FontWeight.w600
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: TextField(
                            decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                          ),
                          border: UnderlineInputBorder(),
                        ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 20, 5, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Text(
                          "Last Name",
                          style: TextStyle(
                            color: Color.fromARGB(255, 104, 103, 103),
                            fontSize: 18,
                            //fontWeight: FontWeight.w600
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: TextField(
                            decoration: const InputDecoration(
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                          ),
                          focusedBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                          ),
                          border: UnderlineInputBorder(),
                        ))),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 0),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(
                          "Phone Number",
                          style: TextStyle(
                            color: Color.fromARGB(255, 104, 103, 103),
                            fontSize: 18,
                            //fontWeight: FontWeight.w600
                          ),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(5, 20, 5, 30),
                      // ignore: unnecessary_new
                      child: new Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Flexible(
                            child: Padding(
                              padding: EdgeInsets.only(right: 8.0),
                              // ignore: unnecessary_new
                              child: new TextField(
                                decoration: const InputDecoration(
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF2BB9AD)),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide:
                                          BorderSide(color: Color(0xFF2BB9AD)),
                                    ),
                                    hintText: "Country Code"),
                                enabled: _status,
                              ),
                            ),
                            flex: 1,
                          ),
                          Flexible(
                            // ignore: unnecessary_new
                            child: new TextField(
                              decoration: const InputDecoration(
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF2BB9AD)),
                                  ),
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Color(0xFF2BB9AD)),
                                  ),
                                  hintText: "Enter Phone Number"),
                              enabled: _status,
                            ),
                            flex: 2,
                          ),
                        ],
                      )),
                  Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              children: [
                                Container(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    "Password",
                                    style: TextStyle(
                                      color: Color.fromARGB(255, 104, 103, 103),
                                      fontSize: 18,
                                      //fontWeight: FontWeight.w600
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                              ],
                            ),
                            Column(children: [
                              InkWell(
                                onTap: () {},
                                child: Container(
                                  margin: const EdgeInsets.only(right: 15),
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    icon: Image.asset('assets/icons/edit.png'),
                                    iconSize: 55,
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                ChangePasswordForm()),
                                      );
                                    },
                                  ),
                                ),
                              ),
                            ]),
                          ]))
                ],
              )),
        ]));
  }
}
