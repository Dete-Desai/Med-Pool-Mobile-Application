// ignore_for_file: prefer_const_constructors, unused_element, unnecessary_const, unnecessary_new
import 'dart:async';
import 'package:flutter/material.dart';

class ArticleLoader extends StatefulWidget {
  @override
  _ArticleLoaderState createState() => _ArticleLoaderState();
}

class _ArticleLoaderState extends State<ArticleLoader> {
  late bool _loading;
  late double _progressValue;

  @override
  void initState() {
    super.initState();
    _loading = false;
    _progressValue = 0.0;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 610,
      child: Card(
        child: SizedBox(
            child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                height: 300,
                width: 300,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(50), // Image border
                  child: SizedBox.fromSize(
                    size: Size.fromRadius(10), // Image radius
                    child: Image.asset('assets/icons/impatient.png',
                        fit: BoxFit.cover),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                child: Center(
                  child: Container(
                    padding: EdgeInsets.all(12.0),
                    child: _loading
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              LinearProgressIndicator(
                                backgroundColor: Colors.cyanAccent,
                                valueColor: new AlwaysStoppedAnimation<Color>(
                                    Color(0xFF36EEF4)),
                                value: _progressValue,
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  '${(_progressValue * 100).round()} seconds',
                                  style: TextStyle(
                                      fontSize: 20, color: Color(0xFF2BB9AD)),
                                ),
                              ),
                            ],
                          )
                        : Text(
                            "Articles Loading....",
                            style: TextStyle(
                                fontSize: 30,
                                color: Color(0xFFD80E00),
                                fontWeight: FontWeight.w600),
                          ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(30.0),
              child: SizedBox(
                child: Text(
                  "Press the refresh button to refresh",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 161, 161, 161),
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.bottomRight,
                child: FloatingActionButton(
                  backgroundColor: Color(0xFF2BB9AD),
                  onPressed: () {
                    setState(() {
                      _loading = !_loading;
                      _updateProgress();
                    });
                  },
                  tooltip: 'Refresh',
                  child: Icon(
                    Icons.refresh_rounded,
                  ),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }

  // this function updates the progress value
  void _updateProgress() {
    const oneSec = const Duration(seconds: 1);
    new Timer.periodic(oneSec, (Timer t) {
      setState(() {
        _progressValue += 0.1;
        // we "finish" downloading here
        if (_progressValue.toStringAsFixed(1) == '1.0') {
          _loading = false;
          t.cancel();
          return;
        }
      });
    });
  }
}
