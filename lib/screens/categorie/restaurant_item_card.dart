import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourism_app/components/rating_bar_coin.dart';
import 'package:tourism_app/components/rating_bar_star.dart';

class RestaurantItemCard extends StatelessWidget {
  final String image;
  final String title;
  final String subTitle;
  final String rate;

  RestaurantItemCard({
    this.image,
    this.title,
    this.subTitle,
    this.rate,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            image:
                DecorationImage(image: NetworkImage(image), fit: BoxFit.cover),
            borderRadius: BorderRadius.only(
              topLeft: const Radius.circular(10.0),
              topRight: const Radius.circular(10.0),
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.45,
          height: 120,
        ),
        Container(
          width: MediaQuery.of(context).size.width * 0.45,
          height: 70,
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              bottomLeft: const Radius.circular(10.0),
              bottomRight: const Radius.circular(10.0),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 12,
                    color: Colors.blue,
                    fontWeight: FontWeight.w900),
              ),
              Text(
                subTitle,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                    fontSize: 8.0,
                    color: Colors.grey,
                    fontWeight: FontWeight.w900),
              ),
              Row(
                children: [
                  Text(
                    rate,
                    style: TextStyle(
                        fontSize: 10.0,
                        color: Colors.blue,
                        fontWeight: FontWeight.bold),
                  ),
                  RatingBarStar(
                    rating: double.parse(rate),
                    color: Colors.blue,
                  ),
                ],
              ),

              // SizedBox(
              //   width: 10.0,
              // ),
              Row(
                children: [
                  RatingBarCoin(
                    rating: 3.0,
                    color: Colors.blue,
                  ),
                  SizedBox(width: 5.0),
                  Icon(
                    FontAwesomeIcons.paperPlane,
                    size: 10.0,
                    color: Colors.blue,
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
