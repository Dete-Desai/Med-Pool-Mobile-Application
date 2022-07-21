// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticlesWebViewDetails extends StatefulWidget {
  @override
  _ArticlesWebViewDetailsState createState() => _ArticlesWebViewDetailsState();
}

class _ArticlesWebViewDetailsState extends State<ArticlesWebViewDetails> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    void directToArticlesPage() =>
        Navigator.of(context, rootNavigator: true).pushNamed("/HomePage");
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back,
                color: Color(0xFF2BB9AD),
              ),
              onPressed: () {
                directToArticlesPage();
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
                  'Articles',
                  style: TextStyle(color: Color(0xFF2BB9AD)),
                ),
              ),
            ],
          )),
          backgroundColor: Color(0xFFFFFFFF),
        ),
        body: WebView(
          initialUrl:
              'https://www.medicinenet.com/type_2_diabetes_pictures_slideshow/article.htm',
        ),
      ),
    );
  }
}
