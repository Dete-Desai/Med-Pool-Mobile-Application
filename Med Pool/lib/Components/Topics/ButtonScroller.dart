// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, must_be_immutable, avoid_print, unnecessary_this, unused_local_variable

import 'dart:math';
import 'package:flutter/material.dart';
import 'package:cross_scroll/cross_scroll.dart';

class ButtonScroller extends StatelessWidget {
  late List<String> Topics;

  ButtonScroller(List<String> medicalTopics) {
    print("called");
    print(medicalTopics.length);
    this.Topics = medicalTopics;
  }

  @override
  Widget build(BuildContext context) {
    final random = Random();
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: 450,
      width: size.height,
      child: CrossScroll(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            for (var i = 0; i < 5; i++)
              Row(
                children: [
                  for (var j = 0; j < Topics.length / 5; j++)
                    if ((i * 5) + j < Topics.length)
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: ElevatedButton(
                              child: Row(
                                children: <Widget>[
                                  Text(Topics[(i * 5) + j]),
                                  Icon(Icons.add),
                                  Icon(Icons.clear_rounded),
                                ],
                              ),
                              style: ButtonStyle(
                                  foregroundColor: MaterialStateProperty.all<
                                      Color>(Colors.white),
                                  backgroundColor:
                                      MaterialStateProperty.all<Color>(
                                          Color.fromARGB(
                                              255,
                                              random.nextInt(255),
                                              random.nextInt(255),
                                              random.nextInt(255))),
                                  shape: MaterialStateProperty.all<
                                          RoundedRectangleBorder>(
                                      RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(45.0),
                                  ))),
                              onPressed: () {
                                debugPrint('Received click');
                              }),
                          height: 40,
                          width: 200,
                        ),
                      ),
                ],
              )
          ],
        ),
      ),
    );
  }
}
