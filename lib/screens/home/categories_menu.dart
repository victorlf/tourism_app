import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CategoriesMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              CircleAvatar(
                radius: 25.0,
                child: Icon(
                  FontAwesomeIcons.umbrellaBeach,
                  color: Colors.white,
                ),
                backgroundColor: Colors.yellow[700],
              ),
              Text(
                'Beach',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 25.0,
                child: Icon(
                  FontAwesomeIcons.building,
                  color: Colors.white,
                ),
                backgroundColor: Colors.orange,
              ),
              Text(
                'Historical',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 25.0,
                child: Icon(
                  FontAwesomeIcons.bowlingBall,
                  color: Colors.white,
                ),
                backgroundColor: Colors.red,
              ),
              Text(
                'Fun',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 25.0,
                child: Icon(
                  FontAwesomeIcons.tree,
                  color: Colors.white,
                ),
                backgroundColor: Colors.green,
              ),
              Text(
                'Parks',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
            ],
          ),
          Column(
            children: [
              CircleAvatar(
                radius: 25.0,
                child: Icon(
                  FontAwesomeIcons.apple,
                  color: Colors.white,
                ),
                backgroundColor: Colors.blue,
              ),
              Text(
                'Food',
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 14.0,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
