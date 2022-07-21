// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class EventsWebViewsDetails extends StatefulWidget {
  @override
  _EventsWebViewDetailsState createState() => _EventsWebViewDetailsState();
}

class _EventsWebViewDetailsState extends State<EventsWebViewsDetails> {
  @override
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    void directToEventsPage() =>
        Navigator.of(context, rootNavigator: true).pushNamed("/EventsPage");
    return Scaffold(
      appBar: AppBar(
        leading: new IconButton(
            icon: new Icon(
              Icons.arrow_back,
              color: Color(0xFF2BB9AD),
            ),
            onPressed: () {
              directToEventsPage();
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
                'Events',
                style: TextStyle(color: Color(0xFF2BB9AD)),
              ),
            ),
          ],
        )),
        backgroundColor: Color(0xFFFFFFFF),
      ),
      body: WebView(
        initialUrl: 'https://10times.com/kenya/medical-pharma',
      ),
    );
  }
}
