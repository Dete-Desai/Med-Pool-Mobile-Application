import 'package:flutter/material.dart';

import '../SubComponents/FacilityRecordsViewMoreTopic.dart';

class FacilityRecordsViewMoreReport extends StatefulWidget {
  @override
  _FacilityRecordsViewMoreReportState createState() =>
      _FacilityRecordsViewMoreReportState();
}

class _FacilityRecordsViewMoreReportState
    extends State<FacilityRecordsViewMoreReport> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
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
              FacilityRecordsViewMoreTopic(),
            ])));
  }
}
