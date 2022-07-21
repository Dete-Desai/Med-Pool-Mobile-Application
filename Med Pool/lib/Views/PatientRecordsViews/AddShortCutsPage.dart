// ignore_for_file: file_names, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/PatientRecords/SubComponents/shortcutstype.dart';

import '../../Components/PatientRecords/SubComponents/AddShortCuts.dart';

class AddShortCutsPage extends StatefulWidget {
  AddShortCutsPage(List<ShortcutsType> shortCutList);

  @override
  _AddShortCutsPageState createState() => _AddShortCutsPageState();
}

class _AddShortCutsPageState extends State<AddShortCutsPage> {
  @override
  Widget build(BuildContext context) {
    return AddShortCuts();
  }
}
