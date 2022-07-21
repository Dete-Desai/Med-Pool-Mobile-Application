// ignore_for_file: use_key_in_widget_constructors, unnecessary_this, no_logic_in_create_state, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/MainComponents/HospitalSearch.dart';

class HospitalSearchPage extends StatefulWidget {
  @override
  _HospitalSearchPageState createState() => _HospitalSearchPageState();
}

class _HospitalSearchPageState extends State<HospitalSearchPage> {
  @override
  Widget build(BuildContext context) {
    return HospitalSearch();
  }
}
