class CategoryType {
  late String categoryID;
  late String categoryType;

  CategoryType({required this.categoryID, required this.categoryType});
}

var categoryChoice = [
  CategoryType(categoryID: "Consultation", categoryType: "consultation"),
  CategoryType(categoryID: "Radiology", categoryType: "radiology"),
  CategoryType(categoryID: "Laboratory", categoryType: "laboratory"),
  CategoryType(categoryID: "Pharmacy", categoryType: "pharmacy"),
  CategoryType(categoryID: "Cardiology", categoryType: "cardiology"),
];
