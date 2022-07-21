// ignore_for_file: prefer_const_constructors, unnecessary_new, use_key_in_widget_constructors

import 'package:flutter/material.dart';

class OTPForm extends StatefulWidget {
  @override
  _OTPFormState createState() => _OTPFormState();
}

class _OTPFormState extends State<OTPForm> {
  final GlobalKey<FormState> _passwordResetFormKey = GlobalKey<FormState>();
  late TextEditingController _otpNumberController;

  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    _otpNumberController = new TextEditingController(text: "203976");
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Ink(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/resetimage.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Container(
              color: Colors.black.withOpacity(0),
              padding: const EdgeInsets.all(10.0),
              child: Form(
                key: _passwordResetFormKey,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Online Community",
                        style: TextStyle(
                          color: Color(0xFF2BB9AD),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30.0),
                      //LOGIN EMAIL FIELD
                      TextFormField(
                        controller: _otpNumberController,
                        keyboardType: TextInputType.number,
                        // validator: (value) => emailValidator(value),
                        initialValue: null,
                        maxLength: 6,
                        decoration: InputDecoration(
                            icon: const Icon(
                              Icons.numbers_rounded,
                              color: Color(0xFF2BB9AD),
                            ),
                            labelText: 'OTP Number:',
                            labelStyle: const TextStyle(
                                color: Color(0xFF2BB9AD),
                                fontStyle: FontStyle.normal,
                                fontSize: 20),
                            fillColor: Colors.white,
                            focusedBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                  color: Color(0xFF2BB9AD), width: 2.0),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                            ),
                            helperText: 'Enter OTP Number Sent To You',
                            helperStyle: const TextStyle(
                                color: Color(0xFF838383),
                                fontStyle: FontStyle.normal,
                                fontSize: 16)),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

directToInsurancePage() {}
