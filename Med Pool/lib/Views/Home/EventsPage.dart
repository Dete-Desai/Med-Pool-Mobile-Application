// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Home/MainComponents/Events.dart';

class EventsPage extends StatefulWidget {
  @override
  _EventsPageState createState() => _EventsPageState();
}

class _EventsPageState extends State<EventsPage> {
  @override
  Widget build(BuildContext context) {
    return Events();
  }
}
