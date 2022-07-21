// ignore_for_file: file_names, use_key_in_widget_constructors, must_call_super, unnecessary_new, prefer_const_constructors, avoid_print, deprecated_member_use

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'CategoryType.dart';

class HospitalSearchForm extends StatefulWidget {
  @override
  _HospitalSearchFormState createState() => _HospitalSearchFormState();
}

class _HospitalSearchFormState extends State<HospitalSearchForm> {
  final GlobalKey<FormState> _hospitalSearchFormKey = GlobalKey<FormState>();
  late TextEditingController _locationController;
  late TextEditingController _insuranceProviderController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    _locationController = new TextEditingController(text: "");
    _insuranceProviderController = new TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.black.withOpacity(0),
      child: Form(
        key: _hospitalSearchFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text('Search for hospitals',
                    style: TextStyle(
                        fontSize: 20,
                        color: Color(0xFF2BB9AD),
                        fontWeight: FontWeight.w700)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _locationController,
                keyboardType: TextInputType.text,
                // validator: (value) => emailValidator(value!),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: const Icon(
                    Icons.location_pin,
                    color: Color(0xFF2BB9AD),
                  ),
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
                  hintText: "Location:",
                  hintStyle: TextStyle(
                    color: Color(0xFF2BB9AD),
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextFormField(
                controller: _insuranceProviderController,
                keyboardType: TextInputType.text,
                // validator: (value) => emailValidator(value!),
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  icon: const Icon(
                    Icons.medical_services,
                    color: Color(0xFF2BB9AD),
                  ),
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
                  hintText: "Insurance Provider:",
                  hintStyle: TextStyle(
                    color: Color(0xFF2BB9AD),
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
              child: ElevatedButton(
                child: const Text(
                  "Search",
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0,
                    color: Colors.white,
                  ),
                ),
                onPressed: () {
                  if (_hospitalSearchFormKey.currentState!.validate()) {
                    //userValidation();
                  }
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF2BB9AD),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
