import 'package:flutter/material.dart';

import '../../Components/Authentication/MainComponents/SocialRegistrationForm.dart';

class SocialRegistrationPage extends StatefulWidget {
  const SocialRegistrationPage({Key? key}) : super(key: key);

  @override
  _SocialRegistrationPageState createState() => _SocialRegistrationPageState();
}

class _SocialRegistrationPageState extends State<SocialRegistrationPage> {
  @override
  Widget build(BuildContext context) {
    return const SocialRegistrationForm();
  }
}
