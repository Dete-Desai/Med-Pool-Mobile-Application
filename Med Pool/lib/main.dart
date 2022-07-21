import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Controllers/Routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const OnlineCommunity());
}

class OnlineCommunity extends StatefulWidget {
  const OnlineCommunity({Key? key}) : super(key: key);

  @override
  _OnlineCommunityState createState() => _OnlineCommunityState();
}

class _OnlineCommunityState extends State<OnlineCommunity> {
  final globalScaffoldKey = GlobalKey<ScaffoldState>();

  // late RouteSettings settings;

  // @override
  // void initState() {
  // ignore: todo
  //   // TODO: implement initState
  //   super.initState();
  //   settings = RouteSettings();
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Online Community",
      key: globalScaffoldKey,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch().copyWith(
            primary: const Color(0x002bb9ad),
            secondary: const Color(0x00727474)),
      ),
      initialRoute: '/',
      routes: routesNavigation,
      // routes: RouteGenerator().routesNavigation(settings),
    );
  }
}
