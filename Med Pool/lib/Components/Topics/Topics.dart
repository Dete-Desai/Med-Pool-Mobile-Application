// ignore_for_file: prefer_const_constructors,, file_names, use_key_in_widget_constructors, avoid_unnecessary_containers
//avoid_unnecessary_containers,
//use_key_in_widget_constructors,

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Topics/ButtonScroller.dart';
import 'package:online_community_mobile_app/Components/Topics/searchbar.dart';

class Topic extends StatefulWidget {
  @override
  _TopicState createState() => _TopicState();
}

class _TopicState extends State<Topic> {
  List<String> medicalTopics = [
    "Abortion",
    "Cancer",
    "Diabetes",
    "Depression",
    "Mental Health",
    "Obesity",
    "Malaria",
    "Sanitation",
    "Breastfeeding",
    "Pregnancy",
    "Prenatal Care",
    "Stroke",
    "Tuberculosis",
    "Vaccination",
    "Womens Health",
    "COVID 19",
    "HIV/AIDS",
    "Hepatitis B",
    "Alzheimer's",
    "Parkinson's",
    "Alcoholism",
    "Anxiety",
    "Bipolar Disorder",
  ];
  String searchTerm = "";
  final TextEditingController textController = TextEditingController();

  @override
  void initState() {
    super.initState();

    textController.addListener(changeSearchTerm);
  }

  void changeSearchTerm() {
    setState(() {
      searchTerm = textController.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    void directToRegistration() =>
        Navigator.pushNamed(context, '/RegistrationPage');
    void directToHome() => Navigator.pushNamed(context, '/HomePage');
    void directToProfile() => Navigator.pushNamed(context, '/ProfilePage');

    final List<String> filteredMedicalTopics = medicalTopics
        .where(
            (topic) => topic.toLowerCase().contains(searchTerm.toLowerCase()))
        .toList();

    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Container(
          child: ListView(
            shrinkWrap: false,
            children: [
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 30),
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        directToRegistration();
                      },
                      child: Container(
                          alignment: Alignment.topLeft,
                          child: SizedBox(
                              child: Image.asset('assets/icons/back.png'),
                              height: 50,
                              width: 50)),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Text(
                      "Suggested Topics",
                      style: TextStyle(
                        color: Color(0xFF2BB9AD),
                        fontWeight: FontWeight.bold,
                        fontSize: 25.0,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Text(
                      "Step 2 of 2",
                      style: TextStyle(color: Color(0xFF2BB9AD), fontSize: 15),
                      textAlign: TextAlign.right,
                    ),
                  ],
                ),
              ),

              //Search bar For Suggested topics

              Padding(
                padding: const EdgeInsets.fromLTRB(8, 8, 8, 30),
                child: Expanded(child: SearchBar(textController)),
              ),

              //Suggested Topics Button Scroller Topics
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 8, 15, 8),
                child: ButtonScroller(filteredMedicalTopics),
              ),

              //Complete Registration Link
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 0, 8, 30),
                child: InkWell(
                  child: const Text(
                    "Continue with registration?",
                    style: TextStyle(color: Color(0xFF2BB9AD), fontSize: 24),
                    textAlign: TextAlign.center,
                  ),
                  onTap: () {
                    directToProfile();
                  },
                ),
              ),

              //Complete Registration Button
              Padding(
                padding: const EdgeInsets.fromLTRB(80, 5, 80, 10),
                child: SizedBox(
                  height: 50,
                  width: 250,
                  child: ElevatedButton(
                    child: const Text(
                      "Finish",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 25.0,
                        color: Colors.white,
                      ),
                    ),
                    onPressed: () {
                      directToHome();
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all<Color>(Color(0xFF2BB9AD)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45.0),
                        ))),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
