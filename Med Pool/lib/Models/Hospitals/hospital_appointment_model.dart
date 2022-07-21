import 'dart:convert';

class HospitalAppointmentModel {
  late String id;
  late String firstName;
  late String secondName;
  late String gender;
  late String phoneNumber;
  late String appointmentType;
  late String practitioner;
  late String appointmentDate;
  late String startTime;
  late String endTime;
  late String urgency;
  late String comments;

  HospitalAppointmentModel(
      {required this.id,
      required this.firstName,
      required this.secondName,
      required this.gender,
      required this.phoneNumber,
      required this.appointmentType,
      required this.practitioner,
      required this.appointmentDate,
      required this.startTime,
      required this.endTime,
      required this.urgency,
      required this.comments});

  factory HospitalAppointmentModel.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return HospitalAppointmentModel(
        id: json['id'],
        firstName: json['firstName'],
        secondName: json['secondName'],
        gender: json['gender'],
        phoneNumber: json['phoneNumber'],
        appointmentType: json['appointmentType'],
        practitioner: json['practitioner'],
        appointmentDate: json['appointmentDate'],
        startTime: json['startTime'],
        endTime: json['endTime'],
        urgency: json['urgency'],
        comments: json['comments']);
  }
  void printAttributes() {
    print("id: ${this.id}\n");
  }
}
