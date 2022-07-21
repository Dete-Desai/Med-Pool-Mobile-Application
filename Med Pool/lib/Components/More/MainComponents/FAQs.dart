// ignore_for_file: sized_box_for_whitespace

import 'package:flutter/material.dart';

import '../SubComponents/FaqsTopic.dart';

class FAQs extends StatefulWidget {
  @override
  _FAQsState createState() => _FAQsState();
}

class _FAQsState extends State<FAQs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                          child: Image.asset('assets/icons/back.png'),
                          height: 60,
                          width: 60)),
                ),
              ),
              FaqsTopic(),
            ])));
  }
}
