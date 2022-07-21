import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:online_community_mobile_app/Components/Layouts/BottomNavBar.dart';
import 'package:online_community_mobile_app/Views/AuthenticationViews/ChangePasswordFormPage.dart';
import 'package:online_community_mobile_app/Views/AuthenticationViews/DoctorProfilePage.dart';
import 'package:online_community_mobile_app/Views/AuthenticationViews/ForgotPasswordPage.dart';
import 'package:online_community_mobile_app/Views/AuthenticationViews/LoginPage.dart';
import 'package:online_community_mobile_app/Views/AuthenticationViews/RegistrationPage.dart';
import 'package:online_community_mobile_app/Views/Home/ArticlesPage.dart';
import 'package:online_community_mobile_app/Views/Home/EventsPage.dart';
import 'package:online_community_mobile_app/Views/Home/NewsPage.dart';
import 'package:online_community_mobile_app/Views/Home/NewsWebViewPage.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/AppointPage.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/FacilityRecordsReportPage.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/HospitalPage.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/HospitalSearchPage.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/QueuesPage.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/SelfRegistrationPage.dart';
import 'package:online_community_mobile_app/Views/HospitalsViews/SpecialistPage.dart';
import 'package:online_community_mobile_app/Views/InsuranceViews/CoveredMembersPage.dart';
import 'package:online_community_mobile_app/Views/InsuranceViews/InsurancePage.dart';
import 'package:online_community_mobile_app/Views/InsuranceViews/MemberActivationPage.dart';
import 'package:online_community_mobile_app/Views/InsuranceViews/MemberBalancePage.dart';
import 'package:online_community_mobile_app/Views/InsuranceViews/UtilizationPage.dart';
import 'package:online_community_mobile_app/Views/MoreViews/FAQsPage.dart';
import 'package:online_community_mobile_app/Views/MoreViews/MorePage.dart';
import 'package:online_community_mobile_app/Views/Notifications/NotificationsPage.dart';
import 'package:online_community_mobile_app/Views/PatientRecordsViews/AddShortCutsPage.dart';
import 'package:online_community_mobile_app/Views/PatientRecordsViews/PatientRecordsReportPage.dart';
import 'package:online_community_mobile_app/Views/PatientRecordsViews/PatientRecordsReportViewMorePage.dart';
import 'package:online_community_mobile_app/Views/PatientRecordsViews/PersonalPage.dart';
import 'package:online_community_mobile_app/Views/Splash/SplashPage.dart';
import 'package:online_community_mobile_app/Views/AuthenticationViews/SocialRegistrationPage.dart';
import 'package:online_community_mobile_app/Views/TopicViews/TopicPage.dart';
import '../../Components/PatientRecords/SubComponents/shortcutstype.dart';
import '../../Views/AuthenticationViews/UserProfilePage.dart';
import '../../Views/Home/ArticlesWebViewDetailsPage.dart';
import '../../Views/Home/EventsWebViewsDetailsPage.dart';
import '../../Views/HospitalsViews/FacilityRecordsViewMoreReportPage.dart';

List<ShortcutsType> _shortCutList = <ShortcutsType>[];
var routesNavigation = <String, WidgetBuilder>{
  '/': (BuildContext context) => const SplashPage(),
  '/LoginPage': (BuildContext context) => const LoginPage(),
  '/RegistrationPage': (BuildContext context) => const RegistrationPage(),
  'SocialRegistrationPage': (BuildContext context) =>
      const SocialRegistrationPage(),
  '/ForgotPasswordPage': (BuildContext context) => const ForgotPasswordPage(),
  '/ChangePasswordFormPage': (BuildContext context) => ChangePasswordFormPage(),
  '/UserProfilePage': (BuildContext context) => UserProfilePage(),
  '/DoctorProfilePage': (BuildContext context) => DoctorProfilePage(),
  '/NotificationsPage': (BuildContext context) => NotificationsPage(),
  '/TopicPage': (BuildContext context) => TopicPage(),
  '/HomePage': (BuildContext context) => const BottomNavBar(),
  '/NewsWebViewPage': (BuildContext context) => NewsWebViewPage(),
  '/MemberActivationPage': (BuildContext context) => MemberActivationPage(),
  '/EventsWebViewsDetailsPage': (BuildContext context) =>
      EventsWebViewsDetailsPage(),
  '/ArticlesWebViewDetailsPage': (BuildContext context) =>
      ArticlesWebViewDetailsPage(),
  '/NewsPage': (BuildContext context) => NewsPage(),
  '/EventsPage': (BuildContext context) => EventsPage(),
  '/ArticlesPage': (BuildContext context) => ArticlesPage(),
  '/PersonalPage': (BuildContext context) => PersonalPage(_shortCutList),
  '/AddShortCutsPage': (BuildContext context) =>
      AddShortCutsPage(_shortCutList),
  '/PatientRecordsReportPage': (context) => PatientRecordsReportPage(),
  '/PatientRecordsReportViewMorePage': (context) =>
      PatientRecordsReportViewMorePage(),
  '/HospitalPage': (BuildContext context) => HospitalPage(),
  '/FacilityRecordsReportPage': (BuildContext context) =>
      FacilityRecordsReportPage(),
  '/FacilityRecordsViewMoreReportPage': (BuildContext context) =>
      FacilityRecordsViewMoreReportPage(),
  '/QueuesPage': (BuildContext context) => QueuesPage(),
  '/SpecialistPage': (BuildContext context) => SpecialistPage(),
  '/HospitalSearchPage': (BuildContext context) => HospitalSearchPage(),
  'SelfRegistrationPage': (BuildContext context) => SelfRegistrationPage(),
  '/AppointmentPage': (BuildContext context) => AppointmentPage(),
  '/InsurancePage': (BuildContext context) => InsurancePage(),
  '/CoveredMembersPage': (BuildContext context) => CoveredMembersPage(),
  '/MemberBalancePage': (BuildContext context) => MemberBalancePage(),
  '/UtilizationPage': (BuildContext context) => UtilizationPage(),
  '/MorePage': (BuildContext context) => MorePage(),
  '/FAQsPage': (BuildContext context) => FAQsPage(),
};

// class RouteGenerator {
//   routesNavigation(RouteSettings settings) {
//     switch (settings.name) {
//       case '/':
//         return MaterialPageRoute(builder: (_) => const SplashPage());
//         break;
//       case '/LoginPage':
//         return MaterialPageRoute(builder: (_) => const LoginPage());
//         break;
//       case '/RegistrationPage':
//         return MaterialPageRoute(builder: (_) => const RegistrationPage());
//         break;
//       case '/SocialRegistrationPage':
//         return MaterialPageRoute(
//             builder: (_) => const SocialRegistrationPage());
//         break;
//       case '/ForgotPasswordPage':
//         return MaterialPageRoute(builder: (_) => const ForgotPasswordPage());
//         break;
//       case '/ChangePasswordFormPage':
//         return MaterialPageRoute(builder: (_) => ChangePasswordFormPage());
//         break;
//       case '/UserProfilePage':
//         return MaterialPageRoute(builder: (_) => UserProfilePage());
//         break;
//       case '/DoctorProfilePage':
//         return MaterialPageRoute(builder: (_) => DoctorProfilePage());
//         break;
//       case '/NotificationsPage':
//         return MaterialPageRoute(builder: (_) => NotificationsPage());
//         break;
//       case '/TopicPage':
//         return MaterialPageRoute(builder: (_) => TopicPage());
//         break;
//       case '/HomePage':
//         return MaterialPageRoute(builder: (_) => const BottomNavBar());
//         break;
//       case '/NewsWebViewPage':
//         return MaterialPageRoute(builder: (_) => NewsWebViewPage());
//         break;
//       case '/MemberActivationPage':
//         return MaterialPageRoute(builder: (_) => MemberActivationPage());
//         break;
//       case '/EventsWebViewsDetailsPage':
//         return MaterialPageRoute(builder: (_) => EventsWebViewsDetailsPage());
//         break;
//       case '/ArticlesWebViewDetailsPage':
//         return MaterialPageRoute(builder: (_) => ArticlesWebViewDetailsPage());
//         break;
//       case '/NewsPage':
//         return MaterialPageRoute(builder: (_) => NewsPage());
//         break;
//       case '/EventsPage':
//         return MaterialPageRoute(builder: (_) => EventsPage());
//         break;
//       case '/ArticlesPage':
//         return MaterialPageRoute(builder: (_) => ArticlesPage());
//         break;
//       case '/PersonalPage':
//         return MaterialPageRoute(builder: (_) => PersonalPage([]));
//         break;
//       case '/AddShortCutsPage':
//         return MaterialPageRoute(builder: (_) => AddShortCutsPage());
//         break;
//       case '/PatientRecordsReportPage':
//         return MaterialPageRoute(builder: (_) => PatientRecordsReportPage());
//         break;
//       case '/PatientRecordsReportViewMorePage':
//         return MaterialPageRoute(
//             builder: (_) => PatientRecordsReportViewMorePage());
//         break;
//       case '/HospitalPage':
//         return MaterialPageRoute(builder: (_) => HospitalPage());
//         break;
//       case '/FacilityRecordsReportPage':
//         return MaterialPageRoute(builder: (_) => FacilityRecordsReportPage());
//         break;
//       case '/FacilityRecordsViewMoreReportPage':
//         return MaterialPageRoute(
//             builder: (_) => FacilityRecordsViewMoreReportPage());
//         break;
//       case '/QueuesPage':
//         return MaterialPageRoute(builder: (_) => QueuesPage());
//         break;
//       case '/SpecialistPage':
//         return MaterialPageRoute(builder: (_) => SpecialistPage());
//         break;
//       case '/HospitalSearchPage':
//         return MaterialPageRoute(builder: (_) => HospitalSearchPage());
//         break;
//       case '/SelfRegistrationPage':
//         return MaterialPageRoute(builder: (_) => SelfRegistrationPage());
//         break;
//       case '/AppointmentPage':
//         return MaterialPageRoute(builder: (_) => AppointmentPage());
//         break;
//       case '/InsurancePage':
//         return MaterialPageRoute(builder: (_) => InsurancePage());
//         break;
//       case '/CoveredMembersPage':
//         return MaterialPageRoute(builder: (_) => CoveredMembersPage());
//         break;
//       case '/MemberBalancePage':
//         return MaterialPageRoute(builder: (_) => MemberBalancePage());
//         break;
//       case '/UtilizationPage':
//         return MaterialPageRoute(builder: (_) => UtilizationPage());
//         break;
//       case '/MorePage':
//         return MaterialPageRoute(builder: (_) => MorePage());
//         break;
//       case '/FAQsPage':
//         return MaterialPageRoute(builder: (_) => FAQsPage());
//         break;
//     }
//     return const SplashPage();
//   }
// }
