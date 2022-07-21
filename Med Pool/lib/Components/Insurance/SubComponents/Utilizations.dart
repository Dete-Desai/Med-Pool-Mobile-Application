// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class Utilizations extends StatefulWidget {
  @override
  _UtilizationsState createState() => _UtilizationsState();
}

class _UtilizationsState extends State<Utilizations> {
  @override
  Widget build(BuildContext context) {
    List<String> subject = ['Outpatient:', 'Hospital:', 'Date:'];
    List<String> feedback = [
      'Copay KES 1000',
      'Aga Khan Hospital',
      '02-02-Feb-2022'
    ];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Expenditure",
                  style: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
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
                mainAxisSize: MainAxisSize.max,
                children: [
                  for (var i = 0; i < 3; i++)
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                            child: Text(
                              subject[i],
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 20,
                                  fontWeight: FontWeight.w700),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                feedback[i],
                                style: TextStyle(
                                  color: Color(0xFF474747),
                                  fontSize: 20,
                                  // fontWeight: FontWeight.w300
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 15),
                    child: ElevatedButton(
                      child: const Text(
                        "View More",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        // signInUser();
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF2BB9AD)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45.0),
                          ))),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
