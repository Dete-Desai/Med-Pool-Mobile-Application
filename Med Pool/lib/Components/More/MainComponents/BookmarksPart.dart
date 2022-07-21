// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class BookmarksPart extends StatefulWidget {
  @override
  _BookmarksPartState createState() => _BookmarksPartState();
}

class _BookmarksPartState extends State<BookmarksPart> {
  @override
  Widget build(BuildContext context) {
    List<String> rowIcon = [
      'assets/icons/bookmark.png',
      'assets/icons/marker.png',
      'assets/icons/share.png',
      'assets/icons/juggler.png',
    ];
    List<String> rowName = [
      'Bookmarks',
      'Highlights',
      'Share Online Community',
      'App Activities',
    ];
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < 4; i++)
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: SizedBox(
                      height: 40.0,
                      width: 40.0,
                      child: CircleAvatar(
                        radius: 45,
                        backgroundColor: Color(0xFF2BB9AD),
                        child: Padding(
                          padding: const EdgeInsets.all(0), // Border radius
                          child: ClipOval(child: Image.asset(rowIcon[i])),
                        ),
                      )),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: SizedBox(
                    child: Text(
                      rowName[i],
                      style: TextStyle(
                          color: Color(0xFF7A7A7A),
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
