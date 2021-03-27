import 'package:flutter/material.dart';
import 'package:tourism_app/screens/home/home.dart';

class ItemCard extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;

  ItemCard({this.image, this.title, this.subTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.circular(10.0),
          ),
          width: 90,
          height: 100,
        ),
        Text(
          title,
          style: TextStyle(
              fontSize: 10, color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
        Text(
          subTitle,
          style: TextStyle(
              fontSize: 8, color: Colors.black, fontWeight: FontWeight.bold),
          textAlign: TextAlign.start,
        ),
      ],
    );
  }
}
