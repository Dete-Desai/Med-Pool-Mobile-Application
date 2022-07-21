// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Views/Home/EventsWebViewsDetailsPage.dart';

class EventsCards extends StatefulWidget {
  @override
  _EventsCardsState createState() => _EventsCardsState();
}

class _EventsCardsState extends State<EventsCards> {
  @override
  Widget build(BuildContext context) {
    void directToHomePage() =>
        Navigator.of(context, rootNavigator: true).pushNamed("/HomePage");
    List<String> headingIcon = [
      'assets/icons/thanksgiving.png',
    ];
    List<String> heading = [
      'Heart Run',
      'Doctors Strike',
      'New Health Facilities',
      'Pandemic Plan',
      'JKUATs KEPHIS Visit',
      'International Conference',
      'Training Course',
      'KMA',
      'MEDEXPO Kenya',
      'Lab Expo',
      'IFF',
      'Cosmohome Tech Expo',
      'PharmaTech Expo',
      'MHA',
      'Woven Tech EXPO',
      'INDIA Lab Expo',
      'Exhibition',
      'Symposium',
      'Africa Pharma Conference',
      'Kenya Healthcare Convention',
    ];
    List<String> subHeading = [
      'Smart Applications',
    ];
    List<String> articleImage = [
      'assets/images/heartrun.jpg',
      'assets/images/doctors_strike.webp',
      'assets/images/minet.jpg',
      'assets/images/usaid.jpg',
      'assets/images/kephis.jpg',
      'assets/images/ICMBPS.png',
      'assets/images/stc.png',
      'assets/images/kma.webp',
      'assets/images/medexpo.jpg',
      'assets/images/labexpo.jpg',
      'assets/images/iff.webp',
      'assets/images/cosmohome.jpg',
      'assets/images/kpe.jpg',
      'assets/images/mha.jpeg',
      'assets/images/woven.jpg',
      'assets/images/ile.png',
      'assets/images/mfg.png',
      'assets/images/lions.jpg',
      'assets/images/apc.jpg',
      'assets/images/khc.jpg',
    ];
    List<String> articleDetails = [
      'Nairobi roads to be closed Saturday for Mater Heart Run.',
      'In Kenya, doctors’ strike leaves a nation ailing.',
      'Minet Kenya Enlists 32 New Health Facilities to The Teachers’ Medical Scheme.',
      'USAID is helping Kenyan students stay safe during the pandemic with the following plan.',
      'KEPHIS Hosts Students of Jomo Kenyatta University of Agriculture and Technology.',
      'International Conference on Medical, Biological and Pharmaceutical Sciences (ICMBPS)',
      'Training Course on Hospital Administration Management',
      'The Kenya Medical Association (KMA) is a membership organization representing Medical and Dental',
      'The increasing demand for medical manufacturing products, equipment, machinery, services and solutions',
      'Western (Chengdu) Laboratory Medicine and Blood Transfusion Products Exhibition',
      'International Flavors & Fragrances is an American corporation that creates and manufactures health',
      'Cosmo Tech Expo is India’s Biggest Manufacturing Solutions Trade Show for the Cosmetic, Personal care',
      'Kenya Pharma Expo is a three day exhibition dedicated to the professionals involved in the pharmaceutical industry of Kenya and abroad.',
      'organizer in India & Kenya by organizing exhibitions in varied business sectors in the domestic as well as International circuit',
      'Bringing the vastness of Non Woven Industry to you in a new Virtual Environment',
      'Clin Lab India is the exhibition & conference on the topic of laboratory medicine, Point of Care Testing, molecular medical diagnostics and clinical chemistry.',
      'Healthcare / Medical Device Development Exhibition (MEDIX)',
      'Annual Lions Diabetes Symposium encourages participation across health care professionals from all therapeutic',
      'Africa Pharma Conference will focus on establishing clear priorities for specific, coordinated and effective actions as well as Business to Business',
      'Promoting Kenya as a Regional Healthcare Hub & Healthcare Investment destination',
    ];
    List<String> channelIcon = [
      'assets/images/10times.png',
    ];
    List<String> channelName = [
      '10 times',
    ];
    List<String> time = [
      'now',
      '30 minutes ago',
      '1 hour ago',
      '1 hour 30 minutes ago',
      '2 hours ago',
      '3 hours ago',
      '4 hours ago',
      '6 hours ago',
      '8 hours ago',
      '10 hours ago',
      '12 hours ago',
      'yesterday',
      '1 day ago',
      '2 days ago',
      '3 days ago',
      '4 days ago',
      '6 days ago',
      '8 days ago',
      '10 days ago',
      '12 days ago',
    ];
    void directToEventsWebViewDetails() =>
        Navigator.of(context, rootNavigator: true).pushNamed("/EventsPage");
    return SingleChildScrollView(
      child: Column(
        children: [
          for (var i = 0; i < 20; i++)
            Card(
                child: InkWell(
              onTap: () {},
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      children: [
                        SizedBox(
                          height: 35.0,
                          width: 35.0,
                          child: CircleAvatar(
                              radius: 45,
                              backgroundImage: AssetImage(
                                headingIcon[0],
                              )),
                        ),
                        Expanded(
                          child: ListTile(
                            tileColor: Colors.white,
                            title: Text(
                              heading[i],
                              style: TextStyle(
                                  fontStyle: FontStyle.normal,
                                  fontSize: 14,
                                  color: Colors.black),
                            ),
                            subtitle: Text(subHeading[0],
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
                      Navigator.push(
                        context,
                        new MaterialPageRoute(
                          builder: (context) => new EventsWebViewsDetailsPage(),
                        ),
                      );
                    },
                    child: Column(
                      children: [
                        SizedBox(
                          child: ClipRRect(
                            borderRadius: new BorderRadius.circular(10.0),
                            child: Image(
                              fit: BoxFit.fitWidth,
                              image: AssetImage(articleImage[i]),
                            ),
                          ),
                          height: 160,
                          width: 500,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: SizedBox(
                            child: Text(
                              articleDetails[i],
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.w700),
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
                                    borderRadius:
                                        new BorderRadius.circular(10.0),
                                    child: Image(
                                      fit: BoxFit.fitWidth,
                                      image: AssetImage(channelIcon[0]),
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
                                    channelName[0],
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
                  )),
                ],
              ),
            )),
        ],
      ),
    );
  }
}
