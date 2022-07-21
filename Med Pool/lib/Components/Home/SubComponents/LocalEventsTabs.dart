// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class LocalEventsTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<String> channel = ['Aljazeera', 'Khusoko', 'USAID', 'Tuko'];
    List<String> time = [
      '30 minutes ago',
      '1 hours ago',
      '2 hours ago',
      '6 hours ago'
    ];
    List<String> articleImage = [
      'assets/images/doctors_strike.webp',
      'assets/images/minet.jpg',
      'assets/images/usaid.jpg',
      'assets/images/kephis.jpg'
    ];
    List<String> channelImage = [
      'assets/images/aljazeera.png',
      'assets/images/khusoko.png',
      'assets/images/usaidlogo.png',
      'assets/images/tuko.png'
    ];
    List<String> subject = [
      'In Kenya, doctors’ strike leaves a nation ailing.',
      'Minet Kenya Enlists 32 New Health Facilities to The Teachers’ Medical Scheme.',
      'USAID is helping Kenyan students stay safe during the pandemic with the following plan. ',
      'KEPHIS Hosts Students of Jomo Kenyatta University of Agriculture and Technology.'
    ];
    void directToEventsWebViewsDetailsPage() =>
        Navigator.of(context, rootNavigator: true)
            .pushNamed("/EventsWebViewsDetailsPage");
    return Column(
      children: [
        for (var i = 0; i < 4; i++)
          Card(
            child: InkWell(
              onTap: () {
                directToEventsWebViewsDetailsPage();
              },
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            width: 250,
                            child: Text(
                              subject[i],
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.w700),
                              textAlign: TextAlign.start,
                              maxLines: 3,
                            ),
                          ),
                        ),
                        Spacer(
                          flex: 1,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: SizedBox(
                            child: ClipRRect(
                              borderRadius: new BorderRadius.all(
                                  Radius.elliptical(10, 10)),
                              child: Image(
                                fit: BoxFit.fitWidth,
                                image: AssetImage(articleImage[i]),
                              ),
                            ),
                            height: 60,
                            width: 70,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: SizedBox(
                            child: ClipRRect(
                              borderRadius: new BorderRadius.circular(10.0),
                              child: Image(
                                fit: BoxFit.fitWidth,
                                image: AssetImage(channelImage[i]),
                              ),
                            ),
                            height: 20,
                            width: 20,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(2.0),
                          child: SizedBox(
                            child: Text(
                              channel[i],
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
                          padding: const EdgeInsets.all(2.0),
                          child: SizedBox(
                            child: Text(
                              time[i],
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
            ),
          ),
      ],
    );
  }
}
