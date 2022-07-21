// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final TextEditingController textController;

  const MyTextField(this.textController);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: TextField(
        controller: textController,
        focusNode: null,
        style: TextStyle(fontSize: 16, color: Color(0xFF2BB9AD)),
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF2BB9AD),
              ),
              borderRadius: BorderRadius.circular(45.0)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xFF2BB9AD),
              ),
              borderRadius: BorderRadius.circular(45.0)),
          border: InputBorder.none,
          hintText: "Search",
          hintStyle: TextStyle(
            color: Color(0xFF2BB9AD),
            fontWeight: FontWeight.w800,
            fontSize: 18.0,
          ),
          contentPadding: const EdgeInsets.only(
            left: 16,
            right: 20,
            top: 14,
            bottom: 14,
          ),
        ),
      ),
    );
  }
}
