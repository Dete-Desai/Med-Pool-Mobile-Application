class UrgencyType {
  late String urgencyID;
  late String urgencyType;
  UrgencyType({required urgencyID, required urgencyType});
}

var urgencyChoice = [
  UrgencyType(urgencyID: "High", urgencyType: "High"),
  UrgencyType(urgencyID: "Medium", urgencyType: "Medium"),
  UrgencyType(urgencyID: "Low", urgencyType: "Low")
];
