import 'dart:convert';
import '../API.dart';
import 'package:http/http.dart' as http;

// ignore: camel_case_types
class HospitalAppointmentAPIRequest extends SmartConnectAPI {
  Future<http.Response> bookAppointment(
    String id,
    String firstName,
    String secondName,
    String gender,
    String phoneNumber,
    String appointmentType,
    String practitioner,
    String appointmentDate,
    String startTime,
    String endTime,
    String urgency,
    String comments,
  ) async {
    var body = jsonEncode({
      'id': id,
      'firstName': firstName,
      'secondName': secondName,
      'gender': gender,
      'phoneNumber': phoneNumber,
      'appointmentType': appointmentType,
      'practitioner': practitioner,
      'appointmentDate': appointmentDate,
      'startTime': startTime,
      'endTime': endTime,
      'urgency': urgency,
      'comments': comments,
    });

    http.Response response = await http.post(
        Uri.parse(super.hospitalAppointmentsPath),
        headers: super.headers,
        body: body);

    return response;
  }
}
