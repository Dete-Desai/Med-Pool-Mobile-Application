// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class HNMLocation extends StatefulWidget {
  @override
  _HNMLocationState createState() => _HNMLocationState();
}

class _HNMLocationState extends State<HNMLocation> {
  final GlobalKey<FormState> _locationFormKey = GlobalKey<FormState>();
  late TextEditingController _insuranceController;
  late TextEditingController _locationController;

  @override
  void initState() {
    _insuranceController = TextEditingController(text: "");
    _locationController = TextEditingController(text: "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _locationFormKey,
      child: Column(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextFormField(
              controller: _insuranceController,
              // validator: (value) => emailValidator(value!),
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF9FDFF),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Insurance",
                hintStyle: TextStyle(
                  color: Color(0xFF2BB9AD),
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.8,
            child: TextFormField(
              controller: _locationController,
              // validator: (value) => emailValidator(value!),
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xFFF9FDFF),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                hintText: "Location",
                hintStyle: TextStyle(
                  color: Color(0xFF2BB9AD),
                  fontWeight: FontWeight.w600,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          SizedBox(
              width: MediaQuery.of(context).size.width * 0.8,
              height: 300,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20), // Image border
                child: SizedBox.fromSize(
                  size: Size.fromRadius(48), // Image radius
                  child:
                      Image.asset('assets/images/maps.webp', fit: BoxFit.cover),
                ),
              ))
        ],
      ),
    );
  }
}
