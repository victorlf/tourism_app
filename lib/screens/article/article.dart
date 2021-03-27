import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/components/constants.dart';
import 'package:tourism_app/components/rating_bar_star.dart';
import 'package:tourism_app/screens/article/args.dart';
import 'package:tourism_app/screens/article/information.dart';
import 'package:tourism_app/screens/article/overview.dart';
import 'package:tourism_app/screens/home/popular_row.dart';
import 'package:readmore/readmore.dart';

class Article extends StatefulWidget {
  static const String id = 'article';

  @override
  _ArticleState createState() => _ArticleState();
}

class _ArticleState extends State<Article> {
  @override
  Widget build(BuildContext context) {
    final ArticleArgs args = ModalRoute.of(context).settings.arguments;

    return DefaultTabController(
      length: choicesNames.length,
      child: Scaffold(
        body: StreamBuilder<DocumentSnapshot>(
            stream: firebaseFirestore
                .collection('places')
                .doc(args.placeId)
                .snapshots(),
            builder: (context, snapshot) {
              if (!snapshot.hasData) return Center(child: kProgressCircle);
              return NestedScrollView(
                headerSliverBuilder:
                    (BuildContext context, bool innerBoxIsScrolled) {
                  return [
                    SliverAppBar(
                      leading: IconButton(
                        icon: Icon(Icons.arrow_back, color: Colors.white),
                        onPressed: () => Navigator.of(context).pop(),
                      ),
                      pinned: false,
                      expandedHeight: MediaQuery.of(context).size.height * 0.5,
                      flexibleSpace: Stack(
                        children: [
                          Positioned(
                              child: Image(
                                fit: BoxFit.cover,
                                image: NetworkImage(
                                  snapshot.data.data()['image'],
                                ),
                              ),
                              top: 0,
                              left: 0,
                              right: 0,
                              bottom: 0),
                          Positioned(
                            child: Container(
                              height: 80,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.vertical(
                                  top: Radius.circular(40),
                                ),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 30.0, left: 30.0, bottom: 30.0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      snapshot.data.data()['title'],
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0),
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          snapshot.data.data()['rate'],
                                          style: TextStyle(
                                              fontSize: 14.0,
                                              color: Colors.blue,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        RatingBarStar(
                                          rating: double.parse(
                                              snapshot.data.data()['rate']),
                                          color: Colors.blue,
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            bottom: -1,
                            left: 0,
                            right: 0,
                          ),
                        ],
                      ),
                      bottom: TabBar(
                        indicatorSize: TabBarIndicatorSize.label,
                        labelStyle: TextStyle(
                            fontSize: 14.0, fontWeight: FontWeight.bold),
                        tabs: choicesNames.map((Text choice) {
                          return Tab(
                            text: choice.data,
                          );
                        }).toList(),
                      ),
                    ),
                  ];
                },
                body: Container(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: TabBarView(
                      children: [
                        Overview(args.placeId),
                        Information(),
                        ChoiceCard(choice: Text('Reviews')),
                      ],
                    ),
                  ),
                ),
              );
            }),
      ),
    );
  }
}

List<Text> choicesNames = <Text>[
  const Text('Overview'),
  const Text('Information'),
  const Text('Reviews'),
];

class ChoiceCard extends StatelessWidget {
  const ChoiceCard({Key key, this.choice}) : super(key: key);

  final Text choice;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.white,
      child: Center(
        child: Text(choice.data, style: Theme.of(context).textTheme.display1),
      ),
    );
  }
}
