// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, avoid_unnecessary_containers, unnecessary_const, unnecessary_new

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Home/SubComponents/LocalEventsTabs.dart';
import 'package:online_community_mobile_app/Views/Home/EventsWebViewsDetailsPage.dart';

import 'LocalEventsTabs.dart';

class LocalEvents extends StatefulWidget {
  @override
  _LocalEventsState createState() => _LocalEventsState();
}

class _LocalEventsState extends State<LocalEvents> {
  @override
  Widget build(BuildContext context) {
    void directToEventsWebViewsDetailsPage() =>
        Navigator.of(context, rootNavigator: true)
            .pushNamed("/EventsWebViewsDetailsPage");
    void directToEventsPage() =>
        Navigator.of(context, rootNavigator: true).pushNamed("/EventsPage");
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
                        'assets/images/news.png',
                      )),
                ),
                Expanded(
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: const Text(
                      'Local Events',
                      style: TextStyle(
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          color: Colors.black),
                    ),
                    subtitle: const Text('Smart Applications',
                        style: TextStyle(
                            fontStyle: FontStyle.normal,
                            fontSize: 12,
                            color: Color(0xFF979797))),
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
              child: InkWell(
            onTap: () {
              directToEventsWebViewsDetailsPage();
            },
            child: Column(
              children: [
                SizedBox(
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(10.0),
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/images/heartrun.jpg'),
                    ),
                  ),
                  height: 160,
                  width: 500,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Text(
                      'Nairobi roads to be closed Saturday for Mater Heart Run.',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                      textAlign: TextAlign.start,
                      maxLines: 3,
                    ),
                  ),
                ),
                SizedBox(
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(10.0),
                            child: Image(
                              fit: BoxFit.fitWidth,
                              image: AssetImage('assets/images/thestar.png'),
                            ),
                          ),
                          height: 25,
                          width: 25,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: Text(
                            'The Star',
                            style: TextStyle(
                                fontSize: 17, color: Color(0xFF2BB9AD)),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                      Spacer(
                        flex: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: SizedBox(
                          child: Text(
                            'Today',
                            style: TextStyle(
                                fontSize: 15, color: Color(0xFF2BB9AD)),
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )),
          LocalEventsTabs(),
          Card(
            child: InkWell(
              onTap: () {
                directToEventsPage();
              },
              child: Text(
                'View More',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w800,
                  color: Color(0xFF2BB9AD),
                ),
                textAlign: TextAlign.center,
              ),
            ),
          )
        ],
      )),
    );
  }
}
