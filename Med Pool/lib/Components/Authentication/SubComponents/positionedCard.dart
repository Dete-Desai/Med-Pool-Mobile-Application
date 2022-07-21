// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class PositionedCard extends StatefulWidget {
  @override
  _PositionedCardState createState() => _PositionedCardState();
}

class _PositionedCardState extends State<PositionedCard> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: MediaQuery.of(context).size.height * 0.50,
        left: 40.0,
        right: 40.0,
        height: 180.0,
        child: Card(
            child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                  child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'Dr Fred Owyer',
                    style: TextStyle(color: Colors.black, fontSize: 18.0),
                  ),
                ],
              )),
              Container(
                // ignore: prefer_const_literals_to_create_immutables
                child: Column(children: [
                  Text(
                    'General Specialist',
                    style: TextStyle(color: Color.fromARGB(255, 59, 59, 59), fontSize: 14.0),
                  ),
                ]),
              ),
              Container(
                  child: Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  Text(
                    'The Nairobi Hospital',
                    style: TextStyle(color: Color.fromARGB(255, 43, 42, 42), fontSize: 14.0),
                  ),
                ],
              )),
              Container(
                  child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.yellow,
                  ),
                  Icon(
                    Icons.star_border_outlined,
                    color: Colors.yellow,
                  ),
                  Text(
                    '(56)',
                    style: TextStyle(color: Color.fromARGB(255, 43, 42, 42), fontSize: 13.0),
                  ),
                ],
              )),
            ],
          ),
        )));
  }
}
