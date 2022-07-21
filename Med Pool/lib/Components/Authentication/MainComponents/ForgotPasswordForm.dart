// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors, unnecessary_new

import 'package:flutter/material.dart';

import '../../../../Controllers/Utils/Validators.dart';

class ForgotPasswordForm extends StatefulWidget {
  const ForgotPasswordForm({Key? key}) : super(key: key);

  @override
  _ForgotPasswordFormState createState() => _ForgotPasswordFormState();
}

class _ForgotPasswordFormState extends State<ForgotPasswordForm> {
  final GlobalKey<FormState> _passwordResetFormKey = GlobalKey<FormState>();
  late TextEditingController _emailController;

  @override
  void initState() {
    _emailController = new TextEditingController(text: "");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    String? emailValidator = Validators.validateEmail('');

    void directToLogin() => Navigator.pushNamed(context, '/LoginPage');

    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          // crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: InkWell(
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
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(10, 150, 10, 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          "Password Request",
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
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) => emailValidator!,
                          initialValue: null,
                          // maxLength: 50,
                          decoration: InputDecoration(
                              icon: const Icon(
                                Icons.email_rounded,
                                color: Color(0xFF2BB9AD),
                              ),
                              labelText: 'Email:',
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
                                borderSide:
                                    BorderSide(color: Color(0xFF2BB9AD)),
                              ),
                              // helperText: 'Enter Your Email Address',
                              helperStyle: const TextStyle(
                                  color: Color(0xFF838383),
                                  fontStyle: FontStyle.normal,
                                  fontSize: 16)),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(50, 50, 50, 50),
                          child: ElevatedButton(
                            child: const Text(
                              "Send",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18.0,
                                color: Colors.white,
                              ),
                            ),
                            onPressed: () {
                              if (_passwordResetFormKey.currentState!
                                  .validate()) {
                                //userValidation();
                              }
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
            ),
          ],
        ),
      ),
    );
  }
}
