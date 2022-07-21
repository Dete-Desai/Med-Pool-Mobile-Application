// ignore_for_file: recursive_getters

import 'dart:convert';

// ArticlesModel articlesModelJson(String str) =>
//     ArticlesModel.fromJson(json.decode(str));

// String articlesModelToJson(ArticlesModel data) => json.encode(data.toJson());

// class ArticlesModel {
//   late int id;
//   late String site;
//   late String title;
//   late DateTime publishedDate;
//   late String link;

//   ArticlesModel(
//       {required this.id,
//       required this.site,
//       required this.title,
//       required this.publishedDate,
//       required this.link});

//   factory ArticlesModel.fromJson(Map<String, dynamic> json) => ArticlesModel(
//         id: json["id"],
//         site: json["site"],
//         title: json["title"],
//         publishedDate: json["publishedDate"],
//         link: json["link"],
//       );

//   Map<String, dynamic> toJson() => {
//         'id': id,
//         'site': site,
//         'title': title,
//         'publishedDate': publishedDate,
//         'link': link,
//       };

//   String? get siteData => site;
//   String? get titleData => title;
//   DateTime? get dateData => publishedDate;
//   String? get linkInfo => link;
// }

class ArticlesModel {
  late int id;
  late String title;
  late String site;
  late DateTime publishedDate;
  late String link;

  ArticlesModel(
      {required this.id,
      required this.title,
      required this.site,
      required this.publishedDate,
      required this.link});

  factory ArticlesModel.fromJson(Map<String, dynamic> json) {
    return ArticlesModel(
        id: json["id"],
        title: json["title"],
        site: json["site"],
        publishedDate: json["publishedDate"],
        link: json["link"]);
  }
}
