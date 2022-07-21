import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/PatientRecords/MainComponents/Personal.dart';
import 'package:online_community_mobile_app/Components/PatientRecords/SubComponents/shortcutstype.dart';

class PersonalPage extends StatefulWidget {
  final List<ShortcutsType> _shortCutList;
  PersonalPage(this._shortCutList);
  @override
  _PersonalPageState createState() => _PersonalPageState(this._shortCutList);
}

class _PersonalPageState extends State<PersonalPage> {
  final List<ShortcutsType> _shortCutList;
  _PersonalPageState(this._shortCutList);
  @override
  Widget build(BuildContext context) {
    return Personal(_shortCutList);
  }
}
