import 'package:flutter/material.dart';

class AppBarTitle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Oli'),
        Text(
          'Tourism',
          style: TextStyle(color: Colors.blue),
        )
      ],
    );
  }
}
