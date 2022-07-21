// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors, avoid_function_literals_in_foreach_calls, unnecessary_this, no_logic_in_create_state, avoid_unnecessary_containers, curly_braces_in_flow_control_structures, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/PatientRecords/SubComponents/shortcutstype.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/AppointPage.dart';

class ShortcutsCard extends StatefulWidget {
  final List<ShortcutsType> _shortCutList;
  const ShortcutsCard(this._shortCutList);

  @override
  _ShortcutsCardState createState() => _ShortcutsCardState(this._shortCutList);
}

class _ShortcutsCardState extends State<ShortcutsCard> {
  _ShortcutsCardState(this._shortCutList);
  List<ShortcutsType> _shortCutList;
  List<String> shortcutRoute = [
    '/HospitalSearchPage',
    '/ArticlesPage',
    '/MemberBalancePage',
    '/CoveredMembersPage',
    '/NotificationsPage'
  ];

  @override
  Widget build(BuildContext context) {
    double cWidth = MediaQuery.of(context).size.width * 0.3;
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemCount: _shortCutList.length,
        itemBuilder: (context, index) {
          var item = _shortCutList[index];
          return Card(
            elevation: 5,
            child: InkWell(
              onTap: () => Navigator.of(context, rootNavigator: true)
                  .pushNamed(shortcutRoute[index]),
              child: Row(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                        height: 50.0,
                        child: Center(
                          child: CircleAvatar(
                            radius: 45,
                            backgroundColor: Color(0xFF2BB9AD),
                            child: Padding(
                              padding: const EdgeInsets.all(1), // Border radius
                              child: ClipOval(child: Image.asset(
                                  //Main Card Icon String
                                  item.shortcutIcon)),
                            ),
                          ),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      //CardName
                      item.shortcutName,
                      style: TextStyle(
                          color: Color(0xFF2BB9AD),
                          fontSize: 20,
                          fontWeight: FontWeight.w800),
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      softWrap: false,
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
