// ignore_for_file: prefer_const_constructors, unnecessary_new, must_call_super, use_key_in_widget_constructors

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'gendertype.dart';

class SpecialistSearchForm extends StatefulWidget {
  @override
  _SpecialistSearchFormState createState() => _SpecialistSearchFormState();
}

class _SpecialistSearchFormState extends State<SpecialistSearchForm> {
  final GlobalKey<FormState> _specialistSearchFormKey = GlobalKey<FormState>();
  late TextEditingController _locationController;
  late TextEditingController _insuranceProviderController;
  late TextEditingController _genderController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    _locationController = new TextEditingController(text: "");
    _insuranceProviderController = new TextEditingController(text: "");
    _genderController = new TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.black.withOpacity(0),
      child: Form(
        key: _specialistSearchFormKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Align(
                alignment: Alignment.center,
                child: Text('Search for specialist',
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
              padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
              child: DropdownSearch<GenderType>(
                searchFieldProps: TextFieldProps(
                  controller: _genderController,
                ),
                validator: (value) {
                  // ignore: unrelated_type_equality_checks
                  if (value == null || value == '') {
                    return 'Please Enter Gender';
                  }
                  return null;
                },
                dropdownSearchDecoration: InputDecoration(
                  labelText: 'Gender:',
                  labelStyle: TextStyle(
                    color: Color(0xFF2BB9AD),
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                  ),
                  icon: const Icon(
                    Icons.person_rounded,
                    color: Color(0xFF2BB9AD),
                  ),
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
                  helperText: 'Enter Gender',
                  helperStyle:
                      TextStyle(color: Color(0xFF2BB9AD), fontSize: 14),
                ),
                mode: Mode.DIALOG,
                showSearchBox: true,
                showSelectedItems: false,
                items: genderChoice,
                // itemAsString: (InsuranceType u) => u.insurancePlanType,
                hint: "Sex",
                onChanged: (value) {
                  _genderController.text = value!.genderID.toString();
                  print(value.genderID);
                },
                showClearButton: true,
                clearButtonBuilder: (_) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Icon(
                    Icons.clear,
                    size: 24,
                    color: Color(0xFF2BB9AD),
                  ),
                ),
                dropdownButtonBuilder: (_) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const Icon(
                    Icons.arrow_drop_down,
                    size: 24,
                    color: Color(0xFF2BB9AD),
                  ),
                ),
                filterFn: (instance, filter) {
                  if (instance!.genderType.contains(filter!)) {
                    print(filter);
                    return true;
                  } else {
                    return false;
                  }
                },
                popupItemBuilder: (context, GenderType item, bool isSelected) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 8),
                    decoration: !isSelected
                        ? null
                        : BoxDecoration(
                            border: Border.all(
                                color: Theme.of(context).primaryColor),
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white,
                          ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(item.genderType),
                    ),
                  );
                },
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
                  if (_specialistSearchFormKey.currentState!.validate()) {
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
