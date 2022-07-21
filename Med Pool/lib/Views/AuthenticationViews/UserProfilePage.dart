import 'package:flutter/material.dart';

import '../../Components/Authentication/MainComponents/UserProfile.dart';

class UserProfilePage extends StatefulWidget {
  @override
  _UserProfilePageState createState() => _UserProfilePageState();
}

class _UserProfilePageState extends State<UserProfilePage> {
  @override
  Widget build(BuildContext context) {
    return UserProfile();
  }
}
