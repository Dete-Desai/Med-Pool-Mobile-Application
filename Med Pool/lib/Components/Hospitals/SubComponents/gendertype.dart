class GenderType {
  late String genderID;
  late String genderType;

  GenderType({required this.genderID, required this.genderType});
}

var genderChoice = [
  GenderType(genderID: "Male", genderType: "Male"),
  GenderType(genderID: "Female", genderType: "Female"),
  GenderType(genderID: "Other", genderType: "Other"),
];
