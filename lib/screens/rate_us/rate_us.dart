import 'package:flutter/material.dart';
import 'package:tourism_app/components/app_bar_title.dart';
import 'package:tourism_app/screens/drawer/main_drawer.dart';

class RateUs extends StatelessWidget {
  static const String id = 'rate_us';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(
              Icons.short_text_rounded,
              color: Colors.blue,
            ),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: AppBarTitle(),
      ),
      drawer: MainDrawer(
          //currentSelected: 'Início',
          ),
      body: Center(
        child: Text('Rate us'),
      ),
    );
  }
}
