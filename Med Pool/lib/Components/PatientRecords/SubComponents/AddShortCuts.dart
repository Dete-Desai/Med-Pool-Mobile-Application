// ignore_for_file: use_key_in_widget_constructors, avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_const, unnecessary_this, unused_import, unused_field, curly_braces_in_flow_control_structures, sized_box_for_whitespace, prefer_is_empty

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/PatientRecords/MainComponents/Personal.dart';
import 'package:online_community_mobile_app/Components/PatientRecords/SubComponents/shortcutstype.dart';
import 'package:online_community_mobile_app/Views/PatientRecordsViews/PersonalPage.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../MainComponents/Activity.dart';

class AddShortCuts extends StatefulWidget {
  @override
  _AddShortCutsState createState() => _AddShortCutsState();
}

class _AddShortCutsState extends State<AddShortCuts> {
  bool value = false;

  List<ShortcutsType> _shortcuts = <ShortcutsType>[];
  final List<ShortcutsType> _shortCutList = <ShortcutsType>[];

  @override
  void initState() {
    super.initState();
    _populateShortCuts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'Add Shortcuts',
            style: TextStyle(
                color: Color(0xFF2BB9AD),
                fontSize: 20,
                fontWeight: FontWeight.w600),
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 5,
              width: 110,
              child: OutlinedButton.icon(
                icon: Stack(
                  children: [
                    Icon(
                      Icons.save_rounded,
                      color: Color(0xFF2BB9AD),
                    ),
                    if (_shortCutList.length > 0)
                      Padding(
                        padding: const EdgeInsets.only(left: 2.0),
                        child: CircleAvatar(
                          radius: 12.0,
                          backgroundColor: Color(0xFF2BB9AD),
                          foregroundColor: Colors.white,
                          child: Text(
                            _shortCutList.length.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20.0,
                            ),
                          ),
                        ),
                      ),
                  ],
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.green,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(45.0)))),
                onPressed: () => (_shortCutList.isNotEmpty)
                    ?
                    // _openPopUp(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PersonalPage(_shortCutList)))
                    : Navigator.pop(context),
                label: const Text(
                  'SAVE',
                  style: TextStyle(color: Color(0xFF2BB9AD)),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Container(
          child: Card(
              child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _buildListView(),
      ))),
    );
  }

  ListView _buildListView() {
    return ListView.builder(
        itemCount: _shortcuts.length,
        itemBuilder: (context, index) {
          var item = _shortcuts[index];
          return Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(5, 8, 5, 8),
                  child: Text(
                    item.shortcutName,
                    style: TextStyle(
                        fontStyle: FontStyle.normal,
                        fontSize: 18,
                        fontWeight: FontWeight.w800,
                        color: Colors.black54),
                  ),
                ),
              ),
              OutlinedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        side: BorderSide(
                            color: Colors.green,
                            width: 1,
                            style: BorderStyle.solid),
                        borderRadius: BorderRadius.circular(0.0)))),
                child: (!_shortCutList.contains(item))
                    ? const Text(
                        'ADD',
                        style: TextStyle(color: Colors.green),
                      )
                    : const Text(
                        'REMOVE',
                        style: TextStyle(color: Colors.red),
                      ),
                onPressed: () {
                  setState(() {
                    if (!_shortCutList.contains(item))
                      _shortCutList.add(item);
                    else
                      _shortCutList.remove(item);
                  });
                },
              ),
            ],
          );
        });
  }

  void _populateShortCuts() {
    var list = <ShortcutsType>[
      ShortcutsType(
          shortcutName: 'Appointment',
          shortcutIcon: 'assets/icons/calendar.png'),
      ShortcutsType(
          shortcutName: 'Articles', shortcutIcon: 'assets/icons/newspaper.png'),
      ShortcutsType(
          shortcutName: 'Cover Balance',
          shortcutIcon: 'assets/icons/wallet.png'),
      ShortcutsType(
          shortcutName: 'Cover Members',
          shortcutIcon: 'assets/icons/group.png'),
      ShortcutsType(
          shortcutName: 'Notifications', shortcutIcon: 'assets/icons/bell.png'),
    ];

    setState(() {
      _shortcuts = list;
    });
  }
}
