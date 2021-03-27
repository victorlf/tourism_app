import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

class ProgressCard extends StatelessWidget {
  final String name;
  final double progress;
  final Color color;

  ProgressCard(this.name, this.progress, this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * 0.9,
      height: MediaQuery.of(context).size.width * 0.2,
      padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 20.0),
      margin: EdgeInsets.only(bottom: 20.0),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 0.3,
                padding: EdgeInsets.symmetric(
                  vertical: 5.0,
                ),
                decoration: new BoxDecoration(
                  borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                  color: color,
                ),
                child: Center(
                  child: Text(
                    name,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Text('${progress * 200} / 200 Visited Monuments'),
            ],
          ),
          CircularPercentIndicator(
            radius: 50.0,
            lineWidth: 5.0,
            percent: 0.04,
            center: new Text(
              "${progress * 100}%",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
            progressColor: Colors.blue,
          ),
        ],
      ),
    );
  }
}
