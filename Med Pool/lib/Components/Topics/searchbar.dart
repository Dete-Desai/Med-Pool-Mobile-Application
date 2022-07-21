// ignore_for_file: unnecessary_null_comparison, unnecessary_string_interpolations, prefer_const_constructors, unused_field, prefer_final_fields, prefer_typing_uninitialized_variables, must_be_immutable

import 'package:flutter/material.dart';
import 'MyTextField.dart';

class SearchBar extends StatelessWidget {
  var textController;

  SearchBar(this.textController, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 15,
          ),
          MyTextField(textController)
        ],
      ),
    );
  }
}
