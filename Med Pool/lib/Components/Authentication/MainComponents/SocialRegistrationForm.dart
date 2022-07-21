// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../SubComponents/OTPForm.dart';

class SocialRegistrationForm extends StatefulWidget {
  const SocialRegistrationForm({Key? key}) : super(key: key);

  @override
  _SocialRegistrationFormState createState() => _SocialRegistrationFormState();
}

class _SocialRegistrationFormState extends State<SocialRegistrationForm> {
  final GlobalKey<FormState> _passwordResetFormKey = GlobalKey<FormState>();
  late TextEditingController _firstNameController = TextEditingController();
  late TextEditingController _lastNameController = TextEditingController();
  late TextEditingController _phoneNumberController = TextEditingController();

  @override
  void initState() {
    _firstNameController = new TextEditingController();
    _lastNameController = new TextEditingController();
    _phoneNumberController = new TextEditingController();
    super.initState();
  }

  void directToLoginScreen() => Navigator.pushNamed(context, '/Login');
  void directToTopic() => Navigator.pushNamed(context, '/TopicPage');

  @override
  Widget build(BuildContext context) {
    void directToLogin() => Navigator.pushNamed(context, '/LoginPage');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          directToLogin();
                        },
                        child: Container(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                                child: Image.asset('assets/icons/back.png'),
                                height: 60,
                                width: 60)),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.only(right: 15),
                        alignment: Alignment.topRight,
                        child: const Text(
                          "Step 1 of 2",
                          style: TextStyle(
                            color: Color(0xFF2BB9AD),
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                          ),
                          textAlign: TextAlign.right,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Ink(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/resetimage.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Container(
                color: Colors.black.withOpacity(0),
                padding: const EdgeInsets.all(40.0),
                child: Form(
                  key: _passwordResetFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 50.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          controller: _firstNameController,
                          keyboardType: TextInputType.name,
                          // validator: (value) => emailValidator(value!),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.book_rounded,
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
                            hintText: "First Name",
                            hintStyle: TextStyle(
                              color: Color(0xFF2BB9AD),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 30.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          controller: _lastNameController,
                          keyboardType: TextInputType.name,
                          // validator: (value) => emailValidator(value!),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.book_rounded,
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
                            hintText: "Second Name",
                            hintStyle: TextStyle(
                              color: Color(0xFF2BB9AD),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          controller: _phoneNumberController,
                          keyboardType: TextInputType.phone,
                          // validator: (value) => emailValidator(value!),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.phone_android_rounded,
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
                            hintText: "Phone number",
                            hintStyle: TextStyle(
                              color: Color(0xFF2BB9AD),
                              fontWeight: FontWeight.w600,
                              fontSize: 18.0,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
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
                            _openOtpForm(context);
                          },
                          style: ElevatedButton.styleFrom(
                            primary: const Color(0xFF2BB9AD),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 50, vertical: 20),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(50.0),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  _openOtpForm(context) {
    Alert(
        context: context,
        content: Column(
          children: [
            OTPForm(),
          ],
        ),
        buttons: [
          DialogButton(
            radius: BorderRadius.all(Radius.circular(30)),
            color: Color(0xFF2BB9AD),
            onPressed: () => directToTopic(),
            child: Text(
              "Confirm",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
  }
}
