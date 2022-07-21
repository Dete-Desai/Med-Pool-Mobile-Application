// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_const, avoid_unnecessary_containers, use_key_in_widget_constructors, deprecated_member_use, prefer_collection_literals

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/PatientRecords/SubComponents/ShortcutsCard.dart';
import 'package:online_community_mobile_app/Components/PatientRecords/SubComponents/shortcutstype.dart';
import 'package:online_community_mobile_app/Views/PatientRecordsViews/AddShortCutsPage.dart';

class ShortCuts extends StatefulWidget {
  final List<ShortcutsType> _shortCutList;
  ShortCuts(this._shortCutList);
  @override
  _ShortCutsState createState() => _ShortCutsState(this._shortCutList);
}

class _ShortCutsState extends State<ShortCuts> {
  _ShortCutsState(this._shortCutList);
  List<ShortcutsType> _shortCutList;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Card(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Row(
              children: [
                SizedBox(
                  height: 35.0,
                  width: 35.0,
                  child: const CircleAvatar(
                      radius: 45,
                      backgroundImage: AssetImage(
                        'assets/icons/information.png',
                      )),
                ),
                Expanded(
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: const Text(
                      'Shortcuts',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 15,
                          fontWeight: FontWeight.w800,
                          color: Colors.black),
                    ),
                    subtitle: const Text('Your Favourite Services',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            color: Color.fromARGB(255, 139, 139, 139))),
                  ),
                ),
                OutlinedButton.icon(
                  icon: Icon(
                    Icons.add_rounded,
                    color: Color(0xFF2BB9AD),
                  ),
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          side: BorderSide(
                              color: Colors.green,
                              width: 1,
                              style: BorderStyle.solid),
                          borderRadius: BorderRadius.circular(45.0)))),
                  onPressed: () => (_shortCutList.isEmpty)
                      ? Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  AddShortCutsPage(_shortCutList)))
                      : Navigator.pop(context),
                  label: const Text(
                    'ADD',
                    style: TextStyle(color: Color(0xFF2BB9AD)),
                  ),
                ),
              ],
            ),
          ),
          Divider(
            color: Colors.black,
            height: 4,
          ),
          Card(
            child: ShortcutsCard(_shortCutList),
          )
        ],
      )),
    );
  }
}
