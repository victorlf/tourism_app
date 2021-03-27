import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/components/constants.dart';
import 'package:tourism_app/components/item_card.dart';
import 'package:tourism_app/screens/article/args.dart';
import 'package:tourism_app/screens/article/article.dart';

class HistoricalItens extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: firebaseFirestore.collection('places').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: kProgressCircle);
          return GridView.builder(
              primary: false,
              padding: const EdgeInsets.all(10.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (0.9),
                crossAxisCount: 3,
                mainAxisSpacing: 20,
              ),
              // crossAxisSpacing: 10,
              // mainAxisSpacing: 40,
              itemCount: snapshot.data.size,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: ItemCard(
                    image: snapshot.data.docs[index]['image'],
                    title: snapshot.data.docs[index]['title'],
                    subTitle: '300 m',
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, Article.id,
                        arguments: ArticleArgs(snapshot.data.docs[index].id));
                  },
                );
              });
        });
  }
}
