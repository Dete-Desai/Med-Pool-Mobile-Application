import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Splash/Splash.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  Widget build(BuildContext context) {
    return const Splash(color: Color.fromARGB(255, 19, 239, 247));
  }
}
