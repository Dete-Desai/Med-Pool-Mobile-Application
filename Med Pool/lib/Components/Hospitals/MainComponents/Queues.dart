// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Queues extends StatefulWidget {
  @override
  _QueuesState createState() => _QueuesState();
}

class _QueuesState extends State<Queues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 224, 219, 219),
        resizeToAvoidBottomInset: false,
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(
                // crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: InkWell(
                      onTap: () {
                        //   Navigator.push(context,
                        // MaterialPageRoute(builder: (context) =>()));
                      },
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: InkWell(
                            onTap: () {
                              Navigator.pop(context);
                            },
                            child: SizedBox(
                                child: Image.asset('assets/icons/back.png'),
                                height: 60,
                                width: 60),
                          )),
                    ),
                  ),
                  Column(children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(10, 60, 10, 20),
                      child: Text(
                        "Appointment Queue",
                        style: TextStyle(
                            color: Color(0xFF2BB9AD),
                            fontSize: 22,
                            fontWeight: FontWeight.w600),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    Center(
                        child: Container(
                      width: 300,
                      height: 400,
                      padding: new EdgeInsets.all(10.0),
                      child: Card(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                        color: Colors.white,
                        elevation: 10,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: <Widget>[
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Text(
                                "Number",
                                style: TextStyle(
                                    color: Color(0xFF2BB9AD),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Text(
                                "10",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              height: 4,
                              thickness: 1,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Text(
                                "Status",
                                style: TextStyle(
                                    color: Color(0xFF2BB9AD),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                              child: Text(
                                "PENDING",
                                style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Divider(
                              color: Colors.black,
                              height: 4,
                              thickness: 1,
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Text(
                                "People Ahead",
                                style: TextStyle(
                                    color: Color(0xFF2BB9AD),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 10),
                              child: Text(
                                "9",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25,
                                    fontWeight: FontWeight.w600),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                  ])
                ])));
  }
}
