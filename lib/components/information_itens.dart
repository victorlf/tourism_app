import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class InformationItens extends StatelessWidget {
  final IconData icon;
  final Color iconColor;
  final String text;

  InformationItens(this.icon, this.iconColor, this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            CircleAvatar(
              radius: 25.0,
              child: Icon(
                icon,
                color: Colors.white,
              ),
              backgroundColor: iconColor,
            ),
            SizedBox(
              width: 10.0,
            ),
            Container(
              width: 200.0,
              child: Text(
                text,
                style: TextStyle(fontSize: 14.0),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 10.0,
        )
      ],
    );
  }
}
