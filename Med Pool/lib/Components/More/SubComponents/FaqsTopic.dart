// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import 'Faqquestion.dart';

class FaqsTopic extends StatefulWidget {
  @override
  _FaqsTopicState createState() => _FaqsTopicState();
}

class _FaqsTopicState extends State<FaqsTopic> {
  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      Padding(
        padding: const EdgeInsets.fromLTRB(10, 5, 10, 15),
        child: Text(
          "FAQs",
          style: TextStyle(
              decoration: TextDecoration.underline,
              color: Color(0xFF2BB9AD),
              fontSize: 26,
              fontWeight: FontWeight.w600),
          textAlign: TextAlign.center,
        ),
      ),
      FaqQuestion()
    ]));
  }
}
