import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';
import 'package:tourism_app/screens/home/nearby_row.dart';
import 'package:tourism_app/screens/home/popular_row.dart';

class Overview extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 5.0),
          child: Text(
            'written by sjm-cm',
            textAlign: TextAlign.right,
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue),
          ),
        ),
        ReadMoreText(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          trimLines: 4,
          colorClickableText: Colors.blue,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'see more',
          trimExpandedText: 'see less',
          textAlign: TextAlign.justify,
          moreStyle: TextStyle(
              fontSize: 14, fontWeight: FontWeight.bold, color: Colors.blue),
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'Restaurants Nearby',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
        SizedBox(
          height: 10.0,
        ),
        NearbyRow(),
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
  }
}
