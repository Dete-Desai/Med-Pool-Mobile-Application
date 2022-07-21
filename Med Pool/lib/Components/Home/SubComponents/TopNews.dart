// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, unnecessary_const, unnecessary_new, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Home/SubComponents/TopNewsTabs.dart';
import 'package:online_community_mobile_app/Views/Home/NewsPage.dart';
import 'package:online_community_mobile_app/Views/Home/NewsWebViewPage.dart';

import 'TopNewsTabs.dart';

class TopNews extends StatefulWidget {
  @override
  _TopNewsState createState() => _TopNewsState();
}

class _TopNewsState extends State<TopNews> {
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
                        'assets/images/news1.png',
                      )),
                ),
                Expanded(
                  child: const ListTile(
                    tileColor: Colors.white,
                    title: const Text(
                      'Top News',
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
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                new MaterialPageRoute(
                  builder: (context) => new NewsWebViewPage(),
                ),
              );
            },
            child: Card(
                child: Column(
              children: [
                SizedBox(
                  child: ClipRRect(
                    borderRadius: new BorderRadius.circular(10.0),
                    child: Image(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/images/diabetes.jpg'),
                    ),
                  ),
                  height: 160,
                  width: 500,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    child: Text(
                      'People with type 1 diabetes must take daily insulin replacement, either by injection or via an insulin pump.',
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
                              image: AssetImage('assets/images/RssFeed.png'),
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
                            'RSS Feeds',
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
            )),
          ),
          TopNewsTabs(),
          Card(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(143, 5, 143, 5),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    new MaterialPageRoute(
                      builder: (context) => new NewsPage(),
                    ),
                  );
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
            ),
          )
        ],
      )),
    );
  }
}
