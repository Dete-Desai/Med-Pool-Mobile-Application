// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, avoid_types_as_parameter_names, non_constant_identifier_names, deprecated_member_use, avoid_print, unnecessary_new

import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:online_community_mobile_app/Components/Insurance/SubComponents/InsuranceType.dart';

class InsuranceFilterBar extends StatefulWidget {
  @override
  _InsuranceFilterBarState createState() => _InsuranceFilterBarState();
}

class _InsuranceFilterBarState extends State<InsuranceFilterBar> {
  late TextEditingController _insuranceController;

  @override
  void initState() {
    super.initState();
    _insuranceController = new TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
      child: DropdownSearch<InsuranceType>(
        searchFieldProps: TextFieldProps(
          controller: _insuranceController,
        ),
        validator: (value) {
          // ignore: unrelated_type_equality_checks
          if (value == null || value == '') {
            return 'Please Enter Insurance Plan';
          }
          return null;
        },
        dropdownSearchDecoration: InputDecoration(
          labelText: 'Insurance Plan:',
          labelStyle: TextStyle(
            color: Color(0xFF2BB9AD),
            fontWeight: FontWeight.w600,
            fontSize: 18.0,
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
          helperText: 'Enter Insurance Plan',
          helperStyle: TextStyle(color: Color(0xFF2BB9AD), fontSize: 14),
        ),
        mode: Mode.DIALOG,
        showSearchBox: true,
        showSelectedItems: false,
        items: insuranceChoice,
        // itemAsString: (InsuranceType u) => u.insurancePlanType,
        hint: "Insurance Plan",
        onChanged: (value) {
          _insuranceController.text = value!.insuranceID.toString();
          print(value.insuranceID);
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
          if (instance!.insurancePlanType.contains(filter!)) {
            print(filter);
            return true;
          } else {
            return false;
          }
        },
        popupItemBuilder: (context, InsuranceType item, bool isSelected) {
          return Container(
            margin: EdgeInsets.symmetric(horizontal: 8),
            decoration: !isSelected
                ? null
                : BoxDecoration(
                    border: Border.all(color: Theme.of(context).primaryColor),
                    borderRadius: BorderRadius.circular(5),
                    color: Colors.white,
                  ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(item.insurancePlanType),
            ),
          );
        },
      ),
    );
  }
}
