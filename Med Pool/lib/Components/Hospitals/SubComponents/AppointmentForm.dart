// ignore_for_file: prefer_const_constructors, deprecated_member_use, avoid_print, unnecessary_new, unnecessary_null_comparison, unused_import, use_key_in_widget_constructors

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Hospitals/SubComponents/gendertype.dart';
import 'package:online_community_mobile_app/Controllers/APIs/Hospital/HospitalAppointmentAPIRequest.dart';
import 'package:online_community_mobile_app/Controllers/Utils/Validators.dart';
import 'package:online_community_mobile_app/Models/Hospitals/hospital_model.dart';
import 'package:online_community_mobile_app/Views/Notifications/NotificationsPage.dart';

import '../../../Models/Hospitals/hospital_appointment_model.dart';
import 'CategoryType.dart';
import 'appointmenttype.dart';
import 'urgencytype.dart';

class AppointmentForm extends StatefulWidget {
  @override
  _AppointmentFormState createState() => _AppointmentFormState();
}

class _AppointmentFormState extends State<AppointmentForm> {
  HospitalAppointmentAPIRequest _hospitalAppointmentAPIRequest =
      HospitalAppointmentAPIRequest();

  final GlobalKey<FormState> _appointmentFormKey = GlobalKey<FormState>();
  late String id;
  late String firstName;
  late String secondName;
  late String gender;
  late String phoneNumber;
  late String appointmentType;
  late String practitioner;
  late String appointmentDate;
  late String startTime;
  late String endTime;
  late String urgency;
  late String comments;

  DateTime date = DateTime.now();

  @override
  Widget build(BuildContext context) {
    const validateTime = Validators.timeValidator;
    return Container(
      padding: const EdgeInsets.all(8.0),
      color: Colors.black.withOpacity(0),
      child: Form(
          key: _appointmentFormKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.center,
                  child: Text('The Aga khan Hospital',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color(0xFF2BB9AD),
                          fontWeight: FontWeight.w700)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  // controller: _firstNameController,
                  onChanged: (value) => setState(() => firstName = value),
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
                  // controller: _secondNameController,
                  onChanged: (value) => setState(() => secondName = value),
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
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: DropdownSearch<GenderType>(
                  // searchFieldProps: TextFieldProps(
                  //   // controller: _genderController,
                  //   onChanged: (value) => setState(() =>gender = value),
                  // ),
                  onChanged: (value) {
                    setState(() => gender = value!.genderID.toString());
                    print(value!.genderID);
                  },
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
                  // onChanged: (value) {
                  //   _genderController.text = value!.genderID.toString();
                  //   print(value.genderID);
                  // },
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
                  popupItemBuilder:
                      (context, GenderType item, bool isSelected) {
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
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  // controller: _phoneNumberController,
                  onChanged: (value) => setState(() => phoneNumber = value),
                  keyboardType: TextInputType.phone,
                  // validator: (value) => emailValidator(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.phone_rounded,
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
                    hintText: "Phone Number:",
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
                child: DropdownSearch<AppointmentType>(
                  // searchFieldProps: TextFieldProps(
                  //   // controller: _appointmentTypeController,
                  //   onChanged: (value) =>
                  //       setState(() => appointmentType = value),
                  // ),
                  onChanged: (value) {
                    setState(() =>
                        appointmentType = value!.appointmentID.toString());
                    print(value!.appointmentID);
                  },
                  validator: (value) {
                    // ignore: unrelated_type_equality_checks
                    if (value == null || value == '') {
                      return 'Please Enter Appointment Type';
                    }
                    return null;
                  },
                  dropdownSearchDecoration: InputDecoration(
                    labelText: 'Appointment Type:',
                    labelStyle: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                    icon: const Icon(
                      Icons.healing_rounded,
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
                    helperText: 'Enter Appointment',
                    helperStyle:
                        TextStyle(color: Color(0xFF2BB9AD), fontSize: 14),
                  ),
                  mode: Mode.DIALOG,
                  showSearchBox: true,
                  showSelectedItems: false,
                  items: appointmentChoice,
                  // itemAsString: (InsuranceType u) => u.insurancePlanType,
                  hint: "Appointment",
                  // onChanged: (value) {
                  //   _appointmentTypeController.text =
                  //       value!.appointmentID.toString();
                  //   print(value.appointmentID);
                  // },
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
                    if (instance!.appointmentType.contains(filter!)) {
                      print(filter);
                      return true;
                    } else {
                      return false;
                    }
                  },
                  popupItemBuilder:
                      (context, AppointmentType item, bool isSelected) {
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
                        child: Text(item.appointmentType),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  // controller: _practitionerController,
                  onChanged: (value) => setState(() => practitioner = value),
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
                    hintText: "Practitioner:",
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
                  // controller: _appointmentDateController,
                  onChanged: (value) => setState(() => appointmentDate = value),
                  keyboardType: TextInputType.text,
                  // validator: (value) => emailValidator(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.date_range_rounded,
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
                    hintText: "Appointment Date:",
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
                  // controller: _startTimeController,
                  onChanged: (value) => setState(() => startTime = value),
                  keyboardType: TextInputType.datetime,
                  validator: (value) => validateTime(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.timeline_rounded,
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
                    hintText: "Start Time:",
                    hintStyle: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () async {
                    TimeOfDay time = TimeOfDay.now();
                    FocusScope.of(context).requestFocus(new FocusNode());

                    TimeOfDay? picked = await showTimePicker(
                        context: context, initialTime: time);
                    if (picked != null && picked != time) {
                      startTime = picked.toString(); // add this line.
                      setState(() {
                        time = picked;
                      });
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  // controller: _endTimeController,
                  onChanged: (value) => setState(() => endTime = value),
                  keyboardType: TextInputType.datetime,
                  validator: (value) => validateTime(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.timeline_rounded,
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
                    hintText: "End Time:",
                    hintStyle: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                  ),
                  onTap: () async {
                    TimeOfDay time = TimeOfDay.now();
                    FocusScope.of(context).requestFocus(new FocusNode());

                    TimeOfDay? picked = await showTimePicker(
                        context: context, initialTime: time);
                    if (picked != null && picked != time) {
                      endTime = picked.toString(); // add this line.
                      setState(() {
                        time = picked;
                      });
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                child: DropdownSearch<UrgencyType>(
                  // searchFieldProps: TextFieldProps(
                  //   // controller: _urgencyController,
                  //   onChanged: (value) => setState(() => urgency = value),
                  // ),
                  onChanged: (value) {
                    setState(() => urgency = value!.urgencyID.toString());
                    print(value!.urgencyID);
                  },
                  validator: (value) {
                    // ignore: unrelated_type_equality_checks
                    if (value == null || value == '') {
                      return 'Please Enter Urgency';
                    }
                    return null;
                  },
                  dropdownSearchDecoration: InputDecoration(
                    labelText: 'Urgency:',
                    labelStyle: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w600,
                      fontSize: 18.0,
                    ),
                    icon: const Icon(
                      Icons.medical_services_rounded,
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
                    helperText: 'Enter Urgency',
                    helperStyle:
                        TextStyle(color: Color(0xFF2BB9AD), fontSize: 14),
                  ),
                  mode: Mode.DIALOG,
                  showSearchBox: true,
                  showSelectedItems: false,
                  items: urgencyChoice,
                  // itemAsString: (InsuranceType u) => u.insurancePlanType,
                  hint: "Urgent Appointment",
                  // onChanged: (value) {
                  //   _urgencyController.text = value!.urgencyID.toString();
                  //   print(value.urgencyID);
                  // },
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
                    if (instance!.urgencyType.contains(filter!)) {
                      print(filter);
                      return true;
                    } else {
                      return false;
                    }
                  },
                  popupItemBuilder:
                      (context, UrgencyType item, bool isSelected) {
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
                        child: Text(item.urgencyType),
                      ),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  // controller: _commentsController,
                  onChanged: (value) => setState(() => comments = value),
                  keyboardType: TextInputType.text,
                  // validator: (value) => emailValidator(value!),
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    icon: const Icon(
                      Icons.text_fields_rounded,
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
                    hintText: "Comments:",
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
                    "Book",
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.0,
                      color: Colors.white,
                    ),
                  ),
                  onPressed: () async {
                    if (_appointmentFormKey.currentState!.validate()) {
                      try {
                        var req = await _hospitalAppointmentAPIRequest
                            .bookAppointment(
                                id,
                                firstName,
                                secondName,
                                gender,
                                phoneNumber,
                                appointmentType,
                                practitioner,
                                appointmentDate,
                                startTime,
                                endTime,
                                urgency,
                                comments);
                        if (req.statusCode == 200) {
                          print(req.body);
                          var hospitalAppointment =
                              HospitalAppointmentModel.fromReqBody(req.body);
                          hospitalAppointment.printAttributes();
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => NotificationsPage()));
                        } else {
                          pushError(context);
                        }
                      } on Exception catch (e) {
                        print(e.toString());
                        pushError(context);
                      }
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

  void pushError(context) => showDialog(
        context: context,
        builder: (_) {
          return AlertDialog(
            title: Text(
              'Appointment Alert',
              style: TextStyle(
                  fontSize: 20, color: Colors.red, fontWeight: FontWeight.w600),
            ),
            content: ListView(
              shrinkWrap: true,
              children: const [
                Text(
                  "Your appointment could not be processed at this time.",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color(0xFF2BB9AD),
                      fontWeight: FontWeight.w200),
                )
              ],
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text('Try Again'),
              ),
            ],
          );
        },
      );
}
