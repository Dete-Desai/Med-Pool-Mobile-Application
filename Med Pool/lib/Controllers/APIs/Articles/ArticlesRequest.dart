// ignore_for_file: unnecessary_new, use_key_in_widget_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import "package:graphql_flutter/graphql_flutter.dart";
import 'package:online_community_mobile_app/Models/Media/articles_model.dart';

import '../API.dart';

class ArticlesRequest extends ArticlesAPI {
  static HttpLink httpLink = HttpLink(ArticlesAPI.articlesPath);

  static ValueNotifier<GraphQLClient> getArticles = ValueNotifier(
    GraphQLClient(
      cache: GraphQLCache(),
      link: httpLink,
    ),
  );

  static ValueNotifier<GraphQLClient> articlesToQuery() {
    return getArticles;
  }
}





// class ArticlesRequestState extends ArticlesAPI {
//   // Future<List<ArticlesModel>> getArticles() async {
//   //   var response =
//   //       await http.get(Uri.parse(super.articlesPath), headers: super.headers);

//   //   var jsonData = await json.decode(json.encode(response.body));

//   //   List<ArticlesModel> article = [];
//   //   for (var json in jsonData) {
//   //     ArticlesModel articlesModels = new ArticlesModel(
//   //         id: json['id'],
//   //         site: json['site'],
//   //         title: json['title'],
//   //         publishedDate: json['publishedDate'],
//   //         link: json['link']);
//   //     // articlesModels.id = json["id"];
//   //     // articlesModels.site = json["site"];
//   //     // articlesModels.title = json["title"];
//   //     // articlesModels.publishedDate = json["publishedDate"];
//   //     // articlesModels.link = json["link"];
//   //     article.add(articlesModels);
//   //   }
//   //   return article;
//   // }

//   Future<ArticlesModel> getArticles() async {
//     var response =
//         await http.get(Uri.parse(super.articlesPath), headers: super.headers);

//     var data = response.body;

//     var jsonData = await json.decode(json.encode(response.body));

//     if (response.statusCode == 200) {
//       return ArticlesModel.fromJson(jsonData);
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to load articles');
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     throw UnimplementedError();
//   }
// }
