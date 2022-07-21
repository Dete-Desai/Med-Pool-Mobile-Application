import 'package:flutter/material.dart';
import '../SubComponents/PatientRecordsViewMoreTopic.dart';

class PatientRecordsReportViewMore extends StatefulWidget {
  @override
  ___PatientRecordsReportViewMoreState createState() =>
      ___PatientRecordsReportViewMoreState();
}

class ___PatientRecordsReportViewMoreState
    extends State<PatientRecordsReportViewMore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
            height: MediaQuery.of(context).size.height,
            child: ListView(children: [
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                      alignment: Alignment.topLeft,
                      child: SizedBox(
                          child: Image.asset('assets/icons/back.png'),
                          height: 60,
                          width: 60)),
                ),
              ),
              PatientRecordsViewMoreTopic(),
            ])));
  }
}
