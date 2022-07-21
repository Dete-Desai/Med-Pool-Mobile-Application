class AuthAPI {
  static String base = "http://localhost:8080";
  static var api = base + "/api/v1";
  static var userPath = api + "/user";
  static var authPath = api + "/auth";
  static var logoutPath = api + "/logout";
  static var userProfilePath = api + "/user-profile";
  // more routes
  Map<String, String> headers = {
    "Content-Type": "application/json; charset=UTF-8"
  };
}

class ArticlesAPI {
  static String base = "http://192.180.4.131:7001";
  static var api = base + "/ocapi";
  static var articlesPath = api + "/graphiql";
  // more routes
  Map<String, String> headers = {
    "Content-Type": "application/json; charset=UTF-8"
  };
}

class SmartConnectAPI {
  static String base = "http://localhost:8080";
  static var api = base + "/api/v1";
  static var doctorProfilePath = api + "/doctor-profile";
  static var patientRecordsPath = api + "/patient-records";
  static var facilitiesRecordsPath = api + "/facilities-records";
  static var hospitalAppointmentsPath = api + "/hospitalAppointment";
  static var specialistPath = api + "/specialist";
  // more routes
  Map<String, String> headers = {
    "Content-Type": "application/json; charset=UTF-8"
  };
}

class MedismartAPI {
  static String base = "http://localhost:8080";
  static var api = base + "/api/v1";
  static var userPath = api + "/user";
  static var memberActivationPath = api + "/member-activation";
  static var coveredMembersPath = api + "/covered-members";
  static var balancesPath = api + "/balances";
  static var utilizationPath = api + "/utilization";
  // more routes
  Map<String, String> headers = {
    "Content-Type": "application/json; charset=UTF-8"
  };
}
