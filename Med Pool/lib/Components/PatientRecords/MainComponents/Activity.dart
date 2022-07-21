// ignore_for_file: avoid_unnecessary_containers, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/PatientRecords/SubComponents/shortcutstype.dart';

import '../SubComponents/RecentVisits.dart';
import '../SubComponents/Shortcuts.dart';

class Activity extends StatefulWidget {
  List<ShortcutsType> _shortCutList;
  Activity(this._shortCutList);
  @override
  _ActivityState createState() => _ActivityState(this._shortCutList);
}

class _ActivityState extends State<Activity> {
  List<ShortcutsType> _shortCutList;
  _ActivityState(this._shortCutList);
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [RecentVisits(), ShortCuts(_shortCutList)],
      ),
    );
  }
}
