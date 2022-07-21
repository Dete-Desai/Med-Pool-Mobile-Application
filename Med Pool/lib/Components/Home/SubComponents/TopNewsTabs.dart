// ignore_for_file: prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

class TopNewsTabs extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    void directToNewsDetails() => Navigator.of(context, rootNavigator: true)
        .pushNamed("/NewsWebViewPage");
    List<String> channel = ['RSS Feeds', 'WHO', 'Red Cross', 'RSS Feeds'];
    List<String> time = [
      '30 minutes ago',
      '1 hours ago',
      '2 hours ago',
      '6 hours ago'
    ];
    List<String> articleImage = [
      'assets/images/mellitus.jpg',
      'assets/images/hypaglemia.jpg',
      'assets/images/who.jpg',
      'assets/images/genes.jpg'
    ];
    List<String> channelImage = [
      'assets/images/RssFeed.png',
      'assets/images/who1.png',
      'assets/images/redcross.jpg',
      'assets/images/RssFeed.png'
    ];
    List<String> subject = [
      'Different classes of diabetes mellitus, type 1, type 2, gestational diabetes and other types of diabetes mellitus are compared in terms of diagnostic criteria, etiology and genetics.',
      'Hyperglycemia in diabetes is thought to cause dysfunction of the immune response, which fails to control the spread of invading pathogens in diabetic subjects.',
      'The recent 2016 World Health Organization (WHO) global report on diabetes added a section on diabetes reversal and acknowledged that it can be achieved through weight loss and calorie restriction . ',
      'Genetics. Type 1 diabetes is a heritable polygenic disease with identical twin concordance of 30–70%, 20 sibling risk of 6–7%, and a risk of 1–9% for children who have a parent with diabetes.'
    ];

    return Column(
      children: [
        for (var i = 0; i < 4; i++)
          Card(
            child: InkWell(
              onTap: () {
                directToNewsDetails();
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
