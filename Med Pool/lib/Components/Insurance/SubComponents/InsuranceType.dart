// ignore_for_file: file_names

class InsuranceType {
  late String insuranceID;
  late String insurancePlanType;
  InsuranceType({required this.insuranceID, required this.insurancePlanType});
}

var insuranceChoice = [
  InsuranceType(insuranceID: 'NHIF', insurancePlanType: 'nhif'),
  InsuranceType(insuranceID: 'UAP', insurancePlanType: 'uap'),
  InsuranceType(insuranceID: 'Jubilee', insurancePlanType: 'jubilee'),
  InsuranceType(insuranceID: 'AAR', insurancePlanType: 'aar'),
];
