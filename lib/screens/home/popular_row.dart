import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/components/constants.dart';
import 'package:tourism_app/components/item_card.dart';
import 'package:tourism_app/screens/article/args.dart';
import 'package:tourism_app/screens/article/article.dart';

class PopularRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: firebaseFirestore.collection('places').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: kProgressCircle);
          return Container(
            height: 130.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              // physics: const NeverScrollableScrollPhysics(),
              itemCount: snapshot.data.size,
              itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(right: 10.0),
                child: GestureDetector(
                  child: ItemCard(
                    image: snapshot.data.docs[index]['image'],
                    title: snapshot.data.docs[index]['title'],
                    subTitle: '300 m',
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, Article.id,
                        arguments: ArticleArgs(snapshot.data.docs[index].id));
                  },
                ),
              ),
            ),
          );
        });
  }
}
