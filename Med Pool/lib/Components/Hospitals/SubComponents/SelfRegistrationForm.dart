// ignore_for_file: prefer_const_constructors

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'CategoryType.dart';

class SelfRegistrationForm extends StatefulWidget {
  @override
  _SelfRegistrationFormState createState() => _SelfRegistrationFormState();
}

class _SelfRegistrationFormState extends State<SelfRegistrationForm> {
  final GlobalKey<FormState> _selfRegistrationFormKey = GlobalKey<FormState>();
  late TextEditingController _firstNameController;
  late TextEditingController _secondNameController;
  late TextEditingController _treatmentController;
  late TextEditingController _categoryController;

  @override
  void initState() {
    _firstNameController = new TextEditingController(text: "");
    _secondNameController = new TextEditingController(text: "");
    _treatmentController = new TextEditingController(text: "");
    _categoryController = new TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.black.withOpacity(0),
      child: Form(
          key: _selfRegistrationFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('Aga khan Hospital',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF2BB9AD),
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  controller: _firstNameController,
                  keyboardType: TextInputType.text,
                  // validator: (value) => emailValidator(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.book,
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
                    hintText: "First Name:",
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
                  controller: _secondNameController,
                  keyboardType: TextInputType.text,
                  // validator: (value) => emailValidator(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.book,
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
                    hintText: "Second Name:",
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
                  controller: _treatmentController,
                  keyboardType: TextInputType.text,
                  // validator: (value) => emailValidator(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.book,
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
                    hintText: "Treatment:",
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
                child: DropdownSearch<CategoryType>(
                  searchFieldProps: TextFieldProps(
                    controller: _categoryController,
                  ),
                  validator: (value) {
                    // ignore: unrelated_type_equality_checks
                    if (value == null || value == '') {
                      return 'Please Enter Category';
                    }
                    return null;
                  },
                  dropdownSearchDecoration: InputDecoration(
                    labelText: 'Category:',
                    labelStyle: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                    icon: const Icon(
                      Icons.category,
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
                    helperText: 'Enter Category',
                    helperStyle:
                        TextStyle(color: Color(0xFF2BB9AD), fontSize: 14),
                  ),
                  mode: Mode.DIALOG,
                  showSearchBox: true,
                  showSelectedItems: false,
                  items: categoryChoice,
                  // itemAsString: (InsuranceType u) => u.insurancePlanType,
                  hint: "Hospital Departments",
                  onChanged: (value) {
                    _categoryController.text = value!.categoryID.toString();
                    print(value.categoryID);
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
                    if (instance!.categoryType.contains(filter!)) {
                      print(filter);
                      return true;
                    } else {
                      return false;
                    }
                  },
                  popupItemBuilder:
                      (context, CategoryType item, bool isSelected) {
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
                        child: Text(item.categoryType),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(50, 10, 50, 10),
                child: ElevatedButton(
                  child: const Text(
                    "Register",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () {
                    if (_selfRegistrationFormKey.currentState!.validate()) {
                      //userValidation();
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF2BB9AD),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50.0),
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
