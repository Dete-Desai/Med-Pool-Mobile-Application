// ignore_for_file: file_names, use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';

class EmergencyContact extends StatefulWidget {
  @override
  _EmergencyContactState createState() => _EmergencyContactState();
}

class _EmergencyContactState extends State<EmergencyContact> {
   bool _status = true;
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
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
                padding: const EdgeInsets.fromLTRB(5, 20, 10, 5),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Emergency Contact Person",
                    style: TextStyle(
                        color: Color(0xFF2BB9AD),
                        fontSize: 20,
                        fontWeight: FontWeight.w600
                        ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Padding(
              padding: const EdgeInsets.fromLTRB(5,10,5,0),
              child: Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Text(
                    "Contact Person Name",
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
              decoration: InputDecoration(
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                  ),
            )
            )
            ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(5,20,5,30),
              // ignore: unnecessary_new
              child: new Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[Flexible(
                                child: Padding(
                                  padding: EdgeInsets.only(right: 8.0),
                                  // ignore: unnecessary_new
                                  child: new TextField(
                                    decoration: const InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
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
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                  ),
                  focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                  ),
                                      hintText: "Enter Phone Number"),
                                  enabled: _status,
                                ),
                                flex: 2,
                              ),
                            ],
                          )),
                      //!_status ? : new Container(),
                ]
              )
            ),
              ],
              ),
            )
         
        );
      
  }
}
