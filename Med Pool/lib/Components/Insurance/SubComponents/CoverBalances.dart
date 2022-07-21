// ignore_for_file: file_names, use_key_in_widget_constructors, prefer_const_constructors, avoid_unnecessary_containers, avoid_print

import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';

import 'BenefitsType.dart';

class CoverBalances extends StatefulWidget {
  @override
  _CoverBalancesState createState() => _CoverBalancesState();
}

class _CoverBalancesState extends State<CoverBalances> {
  late TextEditingController _benefitsController;

  void initState() {
    super.initState();
    _benefitsController = new TextEditingController(text: "");
  }

  @override
  Widget build(BuildContext context) {
    List<String> subject = ['Allocation:', 'Expenditure:', 'Balance:'];
    List<String> feedback = ['KES 1000', 'KES 1000', 'KES 1000'];
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 5),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Members",
                  style: TextStyle(
                      color: Color(0xFF2BB9AD),
                      fontSize: 20,
                      fontWeight: FontWeight.w600),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            Card(
              color: Color(0xFFF8F8F8),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 20, 10, 10),
                    child: DropdownSearch<BenefitsType>(
                      searchFieldProps: TextFieldProps(
                        controller: _benefitsController,
                      ),
                      validator: (value) {
                        // ignore: unrelated_type_equality_checks
                        if (value == null || value == '') {
                          return 'Please Choose Benefit';
                        }
                        return null;
                      },
                      dropdownSearchDecoration: InputDecoration(
                        labelText: 'Patient Benefit:',
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
                        helperText: 'Enter Patient Benefit',
                        helperStyle:
                            TextStyle(color: Color(0xFF2BB9AD), fontSize: 14),
                      ),
                      mode: Mode.DIALOG,
                      showSearchBox: true,
                      showSelectedItems: false,
                      items: benefitsChoice,
                      // itemAsString: (InsuranceType u) => u.insurancePlanType,
                      hint: "Benefits",
                      onChanged: (value) {
                        _benefitsController.text = value!.benefitsID.toString();
                        print(value.benefitsID);
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
                        if (instance!.benefitsType.contains(filter!)) {
                          print(filter);
                          return true;
                        } else {
                          return false;
                        }
                      },
                      popupItemBuilder:
                          (context, BenefitsType item, bool isSelected) {
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
                            child: Text(item.benefitsType),
                          ),
                        );
                      },
                    ),
                  ),
                  for (var i = 0; i < 3; i++)
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.fromLTRB(10, 5, 10, 5),
                          child: Text(
                            subject[i],
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              feedback[i],
                              style: TextStyle(
                                color: Color(0xFF474747),
                                fontSize: 20,
                                // fontWeight: FontWeight.w300
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(10, 10, 10, 15),
                    child: ElevatedButton(
                      child: const Text(
                        "View More",
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 15.0,
                          color: Colors.white,
                        ),
                      ),
                      onPressed: () {
                        // signInUser();
                      },
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Color(0xFF2BB9AD)),
                          shape:
                              MaterialStateProperty.all<RoundedRectangleBorder>(
                                  RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(45.0),
                          ))),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
