import 'dart:convert';

class PatientRecordsModel {
  late String id;
  late String firstName;
  late String secondName;
  late String date;
  late String visitTime;
  late String diagnosis;
  late String labs;
  late String treatment;
  late String prescription;

  PatientRecordsModel({
    required this.id,
    required this.firstName,
    required this.secondName,
    required this.date,
    required this.visitTime,
    required this.diagnosis,
    required this.labs,
    required this.treatment,
    required this.prescription,
  });

  factory PatientRecordsModel.fromReqBody(String body) {
    Map<String, dynamic> json = jsonDecode(body);
    return PatientRecordsModel(
        id: json['id'],
        firstName: json['firstName'],
        secondName: json['secondName'],
        date: json['date'],
        visitTime: json['visitTime'],
        diagnosis: json['diagnosis'],
        labs: json['labs'],
        treatment: json['treatment'],
        prescription: json['prescription']);
  }
}
