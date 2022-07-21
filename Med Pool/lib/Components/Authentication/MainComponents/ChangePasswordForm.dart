// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Views/AuthenticationViews/UserProfilePage.dart';
import '../../../../Controllers/Utils/Validators.dart';

class ChangePasswordForm extends StatefulWidget {
  const ChangePasswordForm({Key? key}) : super(key: key);
  @override
  _ChangePasswordFormState createState() => _ChangePasswordFormState();
}

class _ChangePasswordFormState extends State<ChangePasswordForm> {
  final GlobalKey<FormState> _passwordChangeFormKey = GlobalKey<FormState>();
  late TextEditingController _emailController = TextEditingController();
  late TextEditingController _passwordController = TextEditingController();
  late TextEditingController _newpasswordController = TextEditingController();
  late TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  void initState() {
    _emailController = new TextEditingController();
    _passwordController = new TextEditingController();
    _newpasswordController = new TextEditingController();
    _confirmPasswordController = new TextEditingController();
    super.initState();
  }

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    String? emailValidator = Validators.validateEmail('');
    String? passwordValidator = Validators.validatePassword('');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                          //   Navigator.push(
                          // context,
                          // MaterialPageRoute(builder: (context) => UserProfilePage()),
                          // );
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
                ],
              ),
            ),
            Ink(
              child: Container(
                color: Colors.black.withOpacity(0),
                padding: const EdgeInsets.all(25.0),
                child: Form(
                  key: _passwordChangeFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Change Password",
                        style: TextStyle(
                          color: Color(0xFF2BB9AD),
                          fontWeight: FontWeight.bold,
                          fontSize: 20.0,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          controller: _emailController,
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) => emailValidator!,
                          initialValue: null,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.email_rounded,
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
                            hintText: "Email",
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
                          controller: _passwordController,
                          obscureText: _obscureText,
                          initialValue: null,
                          keyboardType: TextInputType.text,
                          validator: (value) => passwordValidator!,
                          decoration: InputDecoration(
                            //filled: true,
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
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: _toggle,
                                color: const Color(0xFF2BB9AD),
                              ),
                            hintText: "Current Password",
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
                          controller: _newpasswordController,
                          validator: (value) => passwordValidator!,
                          obscureText: _obscureText,
                          initialValue: null,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.lock_rounded,
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
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: _toggle,
                                color: const Color(0xFF2BB9AD),
                              ),
                            hintText: "New Password",
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
                          controller: _confirmPasswordController,
                          validator: (value) => passwordValidator!,
                          obscureText: _obscureText,
                          initialValue: null,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            icon: const Icon(
                              Icons.lock_rounded,
                              color: Color(0xFF2BB9AD),
                            ),
                            // ignore: prefer_const_constructors
                            border: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                            ),
                            // ignore: prefer_const_constructors
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Color(0xFF2BB9AD)),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                            suffixIcon: IconButton(
                                icon: Icon(
                                  _obscureText
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                ),
                                onPressed: _toggle,
                                color: const Color(0xFF2BB9AD),
                              ),
                            hintText: "Confirm password",
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
                            "Submit",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {
                            if (_passwordChangeFormKey.currentState!
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
          ],
        ),
      ),
    );
  }
}
