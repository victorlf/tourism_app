import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/components/constants.dart';
import 'package:tourism_app/screens/article_restaurant/args.dart';
import 'package:tourism_app/screens/article_restaurant/article_restaurant.dart';
import 'package:tourism_app/screens/categorie/restaurant_item_card.dart';

class RestaurantsItems extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<QuerySnapshot>(
        stream: firebaseFirestore.collection('restaurants').snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: kProgressCircle);
          return GridView.builder(
              primary: false,
              padding: const EdgeInsets.all(10.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                childAspectRatio: (0.8),
                crossAxisCount: 2,
                mainAxisSpacing: 20,
              ),
              // crossAxisSpacing: 10,
              // mainAxisSpacing: 40,
              itemCount: snapshot.data.size,
              itemBuilder: (context, index) {
                return GestureDetector(
                  child: RestaurantItemCard(
                    image: snapshot.data.docs[index]['image'],
                    title: snapshot.data.docs[index]['title'],
                    subTitle: snapshot.data.docs[index]['address'],
                    rate: snapshot.data.docs[index]['rate'],
                  ),
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      ArticleRestaurant.id,
                      arguments: ArticleRestaurantArgs(
                        snapshot.data.docs[index].id,
                      ),
                    );
                  },
                );
              });
        });
  }
}
