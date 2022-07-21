// ignore_for_file: prefer_const_constructors, unnecessary_new, sized_box_for_whitespace, unused_element, prefer_const_literals_to_create_immutables, avoid_print
import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Authentication/SubComponents/OTPForm.dart';
import 'package:online_community_mobile_app/Controllers/APIs/Authentication/SignUpRequest.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:online_community_mobile_app/Controllers/Utils/Validators.dart';

import '../../../Models/Authentication/user_model.dart';
import '../../Layouts/BottomNavBar.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({Key? key}) : super(key: key);

  @override
  _RegistrationFormState createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  SignUpRequest _signUpRequest = SignUpRequest();

  final GlobalKey<FormState> _passwordResetFormKey = GlobalKey<FormState>();

  late String firstName;
  late String secondName;
  late String email;
  late String phoneNumber;
  late String password;
  late String passwordConfirmation;

  bool _obscureText = true;

  void _toggle() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  void directToLogin() => Navigator.pushNamed(context, '/LoginPage');
  void directToTopic() => Navigator.pushNamed(context, '/TopicPage');

  @override
  Widget build(BuildContext context) {
    String? emailValidator = Validators.validateEmail('');
    String? passwordValidator = Validators.validatePassword('');
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
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
                          // directToLogin();
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
                padding: const EdgeInsets.all(25.0),
                child: Form(
                  key: _passwordResetFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          // controller: _firstNameController,
                          onChanged: (value) =>
                              setState(() => firstName = value),
                          keyboardType: TextInputType.emailAddress,
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
                          // controller: _lastNameController,
                          onChanged: (value) =>
                              setState(() => secondName = value),
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
                          // controller: _emailController,
                          onChanged: (value) => setState(() => email = value),
                          keyboardType: TextInputType.emailAddress,
                          validator: (value) => emailValidator!,
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
                          // controller: _phoneNumberController,
                          onChanged: (value) =>
                              setState(() => phoneNumber = value),
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
                      const SizedBox(height: 30.0),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.7,
                        child: TextFormField(
                          // controller: _passwordController,
                          onChanged: (value) =>
                              setState(() => password = value),
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
                            hintText: "Password",
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
                          // controller: _confirmPasswordController,
                          onChanged: (value) =>
                              setState(() => passwordConfirmation = value),
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
                            "Register",
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 18.0,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () async {
                            // if (_passwordResetFormKey.currentState!
                            //     .validate()) {
                            //   try {
                            //     var req = await _signUpRequest.signUp(
                            //         firstName,
                            //         secondName,
                            //         email,
                            //         phoneNumber,
                            //         password,
                            //         passwordConfirmation);
                            //     if (req.statusCode == 200) {
                            //       print(req.body);
                            //       var user = UserModel.fromReqBody(req.body);
                            //       user.printAttributes();
                            //       Navigator.push(
                            //           context,
                            //           MaterialPageRoute(
                            //               builder: (context) =>
                            //                   BottomNavBar()));
                            //     } else {
                            //       pushError(context);
                            //     }
                            //   } on Exception catch (e) {
                            //     print(e.toString());
                            //     pushError(context);
                            //   }
                            // }
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

  void pushError(context) {
    Alert(
        context: context,
        title: "AUTH ERROR ALERT",
        content: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'The Email or Password you have entered might be wrong',
                style: TextStyle(color: Colors.red, fontSize: 10),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Please enusre you have an account or you change your password',
                style: TextStyle(color: Colors.red, fontSize: 10),
              ),
            )
          ],
        ),
        buttons: [
          DialogButton(
            radius: BorderRadius.all(Radius.circular(30)),
            color: Color(0xFF2BB9AD),
            onPressed: () => Navigator.pop(context),
            child: Text(
              "BACK",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          )
        ]).show();
    ;
  }
}
