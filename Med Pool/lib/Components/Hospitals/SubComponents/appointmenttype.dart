class AppointmentType {
  late String appointmentID;
  late String appointmentType;
  AppointmentType({required appointmentID, required appointmentType});
}

var appointmentChoice = [
  AppointmentType(appointmentID: "Urgent", appointmentType: "Urgent"),
  AppointmentType(appointmentID: "Necessary", appointmentType: "Necessary"),
];
