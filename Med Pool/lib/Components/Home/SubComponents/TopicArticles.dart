// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_const, unnecessary_new, use_key_in_widget_constructors, unused_import, sized_box_for_whitespace

import "package:flutter/material.dart";
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:online_community_mobile_app/Components/Home/SubComponents/ArticleLoader.dart';
import 'package:online_community_mobile_app/Controllers/APIs/Articles/ArticlesRequest.dart';

class TopicArticles extends StatefulWidget {
  @override
  _TopicArticlesState createState() => _TopicArticlesState();
}

class _TopicArticlesState extends State<TopicArticles> {
  var articlesQuery = r"""
    query {
      articles(sort:"created_at:desc") {
        id
        title
        site
        publishedDate
        link
      }
    }
  """;

  @override
  Widget build(BuildContext context) {
    void directToArticlesDetails() => Navigator.of(context, rootNavigator: true)
        .pushNamed("/ArticlesWebViewDetailsPage");

    List<String> headingIcon = ['assets/images/bal.webp'];
    List<String> articleImage = ['assets/images/cancer.png'];

    return Container(
      height: 600,
      child: Query(
          options: QueryOptions(
            document: gql(articlesQuery),
            variables: {
              'nRepositories': 50,
            },
            pollInterval: const Duration(seconds: 10),
          ),
          builder: (QueryResult result,
              {VoidCallback? refetch, FetchMore? fetchMore}) {
            if (result.isLoading) {
              return Center(child: CircularProgressIndicator());
            }

            List? articlesRepositories = result.data?['articles']?;

            if (articlesRepositories == null) {
              return Container(child: ArticleLoader());
            }
            return ListView.builder(
                itemCount: articlesRepositories.length,
                itemBuilder: (BuildContext context, int index) {
                  final articleRepository = articlesRepositories[index];
                  return Card(
                      child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Row(
                          children: [
                            SizedBox(
                              height: 35.0,
                              width: 35.0,
                              child: CircleAvatar(
                                  radius: 45,
                                  backgroundImage: AssetImage(
                                    headingIcon[0],
                                  )),
                            ),
                            Expanded(
                              child: ListTile(
                                tileColor: Colors.white,
                                title: Text(
                                  "Health World",
                                  // '${snapshot.data[index].topic}',
                                  style: TextStyle(
                                      fontStyle: FontStyle.normal,
                                      fontSize: 14,
                                      color: Colors.black),
                                ),
                                subtitle: Text(
                                    //Author
                                    articleRepository['site'] ?? 'Waiting for response...',
                                    style: TextStyle(
                                        fontStyle: FontStyle.normal,
                                        fontSize: 12,
                                        color: Color(0xFF979797))),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        height: 4,
                      ),
                      Card(
                          child: InkWell(
                        onTap: () {
                          directToArticlesDetails();
                        },
                        child: Column(
                          children: [
                            SizedBox(
                              child: ClipRRect(
                                borderRadius: new BorderRadius.circular(10.0),
                                child: Image(
                                  fit: BoxFit.fitWidth,
                                  image: AssetImage(articleImage[0]),
                                ),
                              ),
                              height: 160,
                              width: 500,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SizedBox(
                                child: Text(
                                  //Content
                                  articleRepository['title'] ?? 'Waiting for response...',
                                  style: TextStyle(
                                      fontSize: 17,
                                      fontWeight: FontWeight.w700),
                                  textAlign: TextAlign.start,
                                  maxLines: 3,
                                ),
                              ),
                            ),
                            SizedBox(
                              child: Row(
                                children: [
                                  Spacer(
                                    flex: 1,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: SizedBox(
                                      child: Text(
                                        //Time
                                        articleRepository['publishedDate'] ?? 'Waiting for response...',
                                        style: TextStyle(
                                            fontSize: 15,
                                            color: Color(0xFF2BB9AD)),
                                        textAlign: TextAlign.start,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      )),
                    ],
                  ));
                });
          }),
    );
  }
}















// class TopicArticles extends StatelessWidget{

//   final String articlesQuery = r"""
//     query {
//       articles(sort:"created_at:desc") {
//         id
//         title
//         site
//         publishedDate
//         link
//       }
//     }
//   """;

//   @override
//   Widget build(BuildContext context) {

//     void directToArticlesDetails() => Navigator.of(context, rootNavigator: true)
//         .pushNamed("/ArticlesWebViewDetailsPage");

//     List<String> headingIcon = ['assets/images/bal.webp'];
//     List<String> articleImage = ['assets/images/cancer.png'];

//     return Container(
//       height: 600,
//       child: Query(
//           options: QueryOptions(
//               document: articlesQuery,
//               variables: <String, dynamic>{"code": "AS"}),
//           builder: (
//             QueryResult result, {
//               VoidCallback refetch,
//             }) {
//             if (snapshot.data == null) {
//               return Container(child: ArticleLoader());
//             }
//             return ListView.builder(
//                 itemCount: snapshot.data.length,
//                 itemBuilder: (BuildContext context, int index) {
//                   return Card(
//                       child: Column(
//                     children: [
//                       Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: Row(
//                           children: [
//                             SizedBox(
//                               height: 35.0,
//                               width: 35.0,
//                               child: CircleAvatar(
//                                   radius: 45,
//                                   backgroundImage: AssetImage(
//                                     headingIcon[0],
//                                   )),
//                             ),
//                             Expanded(
//                               child: ListTile(
//                                 tileColor: Colors.white,
//                                 title: Text(
//                                   "Health World",
//                                   // '${snapshot.data[index].topic}',
//                                   style: TextStyle(
//                                       fontStyle: FontStyle.normal,
//                                       fontSize: 14,
//                                       color: Colors.black),
//                                 ),
//                                 subtitle: Text(
//                                     //Author
//                                     '${snapshot.data[index].site}',
//                                     style: TextStyle(
//                                         fontStyle: FontStyle.normal,
//                                         fontSize: 12,
//                                         color: Color(0xFF979797))),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                       Divider(
//                         color: Colors.black,
//                         height: 4,
//                       ),
//                       Card(
//                           child: InkWell(
//                         onTap: () {
//                           directToArticlesDetails();
//                         },
//                         child: Column(
//                           children: [
//                             SizedBox(
//                               child: ClipRRect(
//                                 borderRadius: new BorderRadius.circular(10.0),
//                                 child: Image(
//                                   fit: BoxFit.fitWidth,
//                                   image: AssetImage(articleImage[0]),
//                                 ),
//                               ),
//                               height: 160,
//                               width: 500,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: SizedBox(
//                                 child: Text(
//                                   //Content
//                                   '${snapshot.data[index].title}',
//                                   style: TextStyle(
//                                       fontSize: 17,
//                                       fontWeight: FontWeight.w700),
//                                   textAlign: TextAlign.start,
//                                   maxLines: 3,
//                                 ),
//                               ),
//                             ),
//                             SizedBox(
//                               child: Row(
//                                 children: [
//                                   Spacer(
//                                     flex: 1,
//                                   ),
//                                   Padding(
//                                     padding: const EdgeInsets.all(8.0),
//                                     child: SizedBox(
//                                       child: Text(
//                                         //Time
//                                         '${snapshot.data[index].publishedTime}',
//                                         style: TextStyle(
//                                             fontSize: 15,
//                                             color: Color(0xFF2BB9AD)),
//                                         textAlign: TextAlign.start,
//                                       ),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                             )
//                           ],
//                         ),
//                       )),
//                     ],
//                   ));
//                 });
//           }),
//     );
//   }
// }

// class TopicArticles extends StatefulWidget {
//   @override
//   _TopicArticlesState createState() => _TopicArticlesState();
// }

// class _TopicArticlesState extends State<TopicArticles> {
//   @override
//   Widget build(BuildContext context) {
//     void directToArticlesDetails() => Navigator.of(context, rootNavigator: true)
//         .pushNamed("/ArticlesWebViewDetailsPage");
//     List<String> headingIcon = [
//       'assets/images/bal.webp',
//     ];
//     List<String> heading = [
//       'Cancer Awareness',
//       'Skin Diseases',
//       'Child Diseases',
//       'Microbiome',
//       'Genetic Disorder',
//       'Cure',
//       'Hypaglemia',
//       'STDs',
//       'Contagious Diseases',
//       'Cholera',
//       'Smoking',
//       'Prostate',
//       'Prevention Habbits',
//       'Eye Illness',
//       'Tooth Illness',
//       'Ear Illness',
//       'Brain Disorders',
//       'Cure',
//       'Podopic',
//       'Malaria',
//     ];
//     List<String> subHeading = [
//       'ressfeeds.com',
//     ];
//     List<String> articleImage = [
//       'assets/images/cancer.png',
//       'assets/images/skindisease.webp',
//       'assets/images/childhood.jpg',
//       'assets/images/microbiome.jpg',
//       'assets/images/geneticdisorder.jpg',
//       'assets/images/doctor4.jpg',
//       'assets/images/hypaglemia.jpg',
//       'assets/images/stds.webp',
//       'assets/images/contagious.jpg',
//       'assets/images/cholera.jpg',
//       'assets/images/smoking.webp',
//       'assets/images/prostate.jpg',
//       'assets/images/habbits.jpg',
//       'assets/images/eye.webp',
//       'assets/images/tooth.jpg',
//       'assets/images/ear.jpeg',
//       'assets/images/brain.jpg',
//       'assets/images/elonmusk.jpg',
//       'assets/images/podopic.jpg',
//       'assets/images/malaria.webp',
//     ];
//     List<String> articleDetails = [
//       'Cancer mortality rapidly increasing in developing countries.',
//       'List of common skin conditions and their symptoms and causes',
//       'Childhood diseases affecting most families in Kenya today',
//       'How you can treat microbiome and noncommunicable diseases',
//       'Genetic disorders among children that should be spoted early',
//       'Lacking Calcium? doctors have ways on how to strengthen your bones',
//       'A new cure for diabetes mellitus has been found',
//       '8 sexually transmitted diseases in kenya today',
//       'How HVAC can help prevent the spread of contagious diseases',
//       'How cholera bacteria works and how it can be treated',
//       '10 of the worst diseases caused by smoking',
//       'How to prevent yourself from getting prostate cancer',
//       'Healthy habbits to avoid as many diseases as possible',
//       'What causes glaucoma and why',
//       'Periodontitis and systematic diseases',
//       'Swimmers ear that is known as Otitis Externa can be cured',
//       'Types of brain disorders symptoms,causes and prevention',
//       'See how Elom Musk plans to eliminate brain disorders',
//       'The cause of painful disease farmers are affected with in Uganda',
//       'This how fast malaria can kill you if dont get treated',
//     ];
//     List<String> time = [
//       'now',
//       '30 minutes ago',
//       '1 hour ago',
//       '1 hour 30 minutes ago',
//       '2 hours ago',
//       '3 hours ago',
//       '4 hours ago',
//       '6 hours ago',
//       '8 hours ago',
//       '10 hours ago',
//       '12 hours ago',
//       'yesterday',
//       '1 day ago',
//       '2 days ago',
//       '3 days ago',
//       '4 days ago',
//       '6 days ago',
//       '8 days ago',
//       '10 days ago',
//       '12 days ago',
//     ];
//     return Container(
//       child: Column(
//         children: [
//           for (var i = 0; i < 20; i++)
//             Card(
//                 child: Column(
//               children: [
//                 Padding(
//                   padding: const EdgeInsets.all(5.0),
//                   child: Row(
//                     children: [
//                       SizedBox(
//                         height: 35.0,
//                         width: 35.0,
//                         child: CircleAvatar(
//                             radius: 45,
//                             backgroundImage: AssetImage(
//                               headingIcon[0],
//                             )),
//                       ),
//                       Expanded(
//                         child: ListTile(
//                           tileColor: Colors.white,
//                           title: Text(
//                             heading[i],
//                             style: TextStyle(
//                                 fontStyle: FontStyle.normal,
//                                 fontSize: 14,
//                                 color: Colors.black),
//                           ),
//                           subtitle: Text(subHeading[0],
//                               style: TextStyle(
//                                   fontStyle: FontStyle.normal,
//                                   fontSize: 12,
//                                   color: Color(0xFF979797))),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Divider(
//                   color: Colors.black,
//                   height: 4,
//                 ),
//                 Card(
//                     child: InkWell(
//                   onTap: () {
//                     directToArticlesDetails();
//                   },
//                   child: Column(
//                     children: [
//                       SizedBox(
//                         child: ClipRRect(
//                           borderRadius: new BorderRadius.circular(10.0),
//                           child: Image(
//                             fit: BoxFit.fitWidth,
//                             image: AssetImage(articleImage[i]),
//                           ),
//                         ),
//                         height: 160,
//                         width: 500,
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: SizedBox(
//                           child: Text(
//                             articleDetails[i],
//                             style: TextStyle(
//                                 fontSize: 17, fontWeight: FontWeight.w700),
//                             textAlign: TextAlign.start,
//                             maxLines: 3,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         child: Row(
//                           children: [
//                             Spacer(
//                               flex: 1,
//                             ),
//                             Padding(
//                               padding: const EdgeInsets.all(8.0),
//                               child: SizedBox(
//                                 child: Text(
//                                   time[i],
//                                   style: TextStyle(
//                                       fontSize: 15, color: Color(0xFF2BB9AD)),
//                                   textAlign: TextAlign.start,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       )
//                     ],
//                   ),
//                 )),
//               ],
//             )),
//         ],
//       ),
//     );
//   }
// }
