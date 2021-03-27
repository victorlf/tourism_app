import 'package:flutter/material.dart';

class RatingBarCoin extends StatelessWidget {
  final int starCount;
  final double rating;
  final Color color;

  RatingBarCoin(
      {this.starCount = 5, this.rating = 0.0, this.color = Colors.black87});

  ///create star
  Widget buildCoin(BuildContext context, int index) {
    IconData icName = Icons.euro;
    Color icColor = color;

    if (index >= rating) {
      icName = Icons.euro_symbol;
      icColor = color.withOpacity(0.4);
    } // else if (index > rating - 1 && index < rating) {
    //   icName = Icons.euro_;
    // }

    return Icon(icName, size: 10.0, color: icColor);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(starCount, (i) => buildCoin(context, i)),
    );
  }
}
