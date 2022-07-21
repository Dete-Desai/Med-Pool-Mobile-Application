// ignore_for_file: prefer_final_fields, prefer_const_constructors, unused_import, avoid_print, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/PatientRecords/SubComponents/shortcutstype.dart';
import 'package:online_community_mobile_app/Views/Home/HomePage.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/HospitalPage.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/HospitalSearchPage.dart';
import 'package:online_community_mobile_app/Views/InsuranceViews/InsurancePage.dart';
import 'package:online_community_mobile_app/Views/InsuranceViews/MemberActivationPage.dart';
import 'package:online_community_mobile_app/Views/MoreViews/MorePage.dart';
import 'package:online_community_mobile_app/Views/PatientRecordsViews/PersonalPage.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  List<GlobalKey<NavigatorState>> _navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isFirstRouteInCurrentTab =
            !await _navigatorKeys[_selectedIndex].currentState!.maybePop();

        print(
            'isFirstRouteInCurrentTab: ' + isFirstRouteInCurrentTab.toString());

        // let system handle back button if we're on the first route
        return isFirstRouteInCurrentTab;
      },
      child: Scaffold(
        body: Center(
          child: Stack(
            children: [
              _buildOffstageNavigator(0),
              _buildOffstageNavigator(1),
              _buildOffstageNavigator(2),
              _buildOffstageNavigator(3),
              _buildOffstageNavigator(4)
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          selectedFontSize: 15.0,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Color(0xFF2BB9AD),
          showUnselectedLabels: true,
          onTap: _onItemTapped,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/home.png",
                width: 40,
                height: 40,
              ),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/personal.png",
                width: 40,
                height: 40,
              ),
              label: 'Personal',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/healthcareone.png",
                width: 40,
                height: 40,
              ),
              label: 'Care',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/healthcare.png",
                width: 40,
                height: 40,
              ),
              label: 'Insurance',
            ),
            BottomNavigationBarItem(
              icon: Image.asset(
                "assets/icons/menu.png",
                width: 40,
                height: 40,
              ),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }

  List<ShortcutsType> _shortCutList = <ShortcutsType>[];

  Map<String, WidgetBuilder> _routeBuilders(BuildContext context, int index) {
    return {
      '/': (context) {
        return [
          HomePage(),
          PersonalPage(_shortCutList),
          HospitalPage(),
          MemberActivationPage(),
          MorePage()
        ].elementAt(index);
      },
    };
  }

  Widget _buildOffstageNavigator(int index) {
    final Map routeBuilders = _routeBuilders(context, index);

    return Offstage(
      offstage: _selectedIndex != index,
      child: Navigator(
        key: _navigatorKeys[index],
        onGenerateRoute: (routeSettings) {
          return MaterialPageRoute(
            builder: (context) => routeBuilders[routeSettings.name](context),
          );
        },
      ),
    );
  }
}
