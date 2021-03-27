import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:tourism_app/components/constants.dart';
import 'package:tourism_app/screens/home/popular_row.dart';

class Overview extends StatelessWidget {
  final String placeId;

  Overview(this.placeId);

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<DocumentSnapshot>(
        stream: firebaseFirestore
            .collection('places')
            .doc(placeId)
            .collection('overview')
            .doc('overview')
            .snapshots(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) return Center(child: kProgressCircle);
          return ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 5.0),
                child: Text(
                  snapshot.data.data()['author'],
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ),
              ReadMoreText(
                snapshot.data.data()['text'],
                trimLines: 4,
                colorClickableText: Colors.blue,
                trimMode: TrimMode.Line,
                trimCollapsedText: 'see more',
                trimExpandedText: 'see less',
                textAlign: TextAlign.justify,
                moreStyle: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Popular',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              PopularRow(),
            ],
          );
        });
  }
}
