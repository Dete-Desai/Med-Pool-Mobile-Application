// ignore_for_file: prefer_const_constructors, unnecessary_new, prefer_const_literals_to_create_immutables, unused_import, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'dart:io';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../Views/Home/HomePage.dart';

class NewsWebViewDetails extends StatefulWidget {
  @override
  _NewsWebViewDetailsState createState() => _NewsWebViewDetailsState();
}

class _NewsWebViewDetailsState extends State<NewsWebViewDetails> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    void directToNewsPage() =>
        Navigator.of(context, rootNavigator: true).pushNamed("/NewsPage");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back,
                color: Color(0xFF2BB9AD),
              ),
              onPressed: () {
                directToNewsPage();
              }),
          title: Center(
              child: Row(
            children: [
              Tab(
                icon: Image.asset('assets/icons/news.png',
                    width: 30.0, height: 30.0),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                child: Text(
                  'News',
                  style: TextStyle(color: Color(0xFF2BB9AD)),
                ),
              ),
            ],
          )),
          backgroundColor: Color(0xFFFFFFFF),
        ),
        body: WebView(
          initialUrl: 'https://www.medicalnewstoday.com/',
        ),
      ),
    );
  }
}
