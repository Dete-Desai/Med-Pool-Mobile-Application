// ignore_for_file: use_key_in_widget_constructors, unnecessary_new, prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Views/Home/NewsWebViewPage.dart';

class NewsCards extends StatefulWidget {
  @override
  _NewsCardsState createState() => _NewsCardsState();
}

class _NewsCardsState extends State<NewsCards> {
  @override
  Widget build(BuildContext context) {
    List<String> headingIcon = [
      'assets/icons/global-news.png',
    ];
    List<String> heading = [
      'Long COVID',
      'COVID-19',
      'High Blood Pressure',
      'Heart Disease',
      'COVID Symptoms',
      'Anxiety',
      'Cardamom',
      'Pain',
      'IVF Treatment',
      'Diabetes',
      'Heart Disease',
      'Human Genome',
      'Climate Change',
      'Endometrosis',
      'Nausea',
      'Selenium',
      'Eczema',
      'Greysexual',
      'Cognitive impairement',
      'Lung Irritants',
    ];
    List<String> subHeading = [
      'Smart Applications',
    ];
    List<String> articleImage = [
      'assets/images/brain1.jpg',
      'assets/images/sustainable.jpg',
      'assets/images/hbp.jpg',
      'assets/images/ovacado.jpg',
      'assets/images/symptoms.jpg',
      'assets/images/anxiety.jpg',
      'assets/images/cardamon.jpg',
      'assets/images/pain.jpg',
      'assets/images/pills.jpg',
      'assets/images/diet.jpg',
      'assets/images/disease.jpg',
      'assets/images/sequence.jpg',
      'assets/images/climate.jpg',
      'assets/images/endome.jpg',
      'assets/images/nausea.jpg',
      'assets/images/selenium.jpg',
      'assets/images/greysexual.jpg',
      'assets/images/lungs.jpg',
      'assets/images/cognitive.jpg',
      'assets/images/eczema.jpg',
    ];
    List<String> articleDetails = [
      'Climate change and sustainability were constantly in the news...',
      'Instead, he explained in an interview with Medical News Today...',
      'Others remain hypertensive despite thorough medical management...',
      'The researchers examined their medical records for incidence of myocardial...',
      'He told Medical News Today that other factors that may contribute...',
      'Genetics at Kings College London, told Medical News Today...',
      'Since MDA-MD-231 had a higher expression of PD-L1 after stimulation...',
      'They found that SARS-CoV-2—the virus that causes COVID-19—leaves...',
      'To learn more about what IVF medications are available...',
      'Medical myths: All about diabetes. Globally, diabetes...',
      'Similarly, Dr. Sara told MNT, “The evolution of digital...',
      'The availability of a complete genome sequence will...',
      'Speaking to Medical News Today, study co-author Dr. Jakob Skov pointed ...',
      'Saint Johns Health Center in Santa Monica, CA, told Medical News Today.',
      'Population Health and study co-author, spoke to Medical News Today...',
      'How does an anti-inflammatory diet work? · Potential health benefits...',
      'This is an exciting time in science and medicine due to the...',
      'Medical News Today uses definitions of sexual, romantic, and gender...',
      '“[W]e want to reassure people that life doesnt...',
      'A study, led by researchers at Stanford University School of Medicine...',
    ];
    List<String> channelIcon = [
      'assets/images/mnt.png',
    ];
    List<String> channelName = [
      'Medical News Today',
    ];
    List<String> time = [
      'now',
      '30 min ago',
      '1 h ago',
      '1 h 30 min ago',
      '2 h ago',
      '3 h ago',
      '4 h ago',
      '6 h ago',
      '8 h ago',
      '10 h ago',
      '12 h ago',
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
    return Container(
      child: Column(
        children: [
          for (var i = 0; i < 20; i++)
            Card(
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
                        builder: (context) => new NewsWebViewPage(),
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
                                  borderRadius: new BorderRadius.circular(10.0),
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
            )),
        ],
      ),
    );
  }
}
