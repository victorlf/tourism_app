import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourism_app/screens/drawer/main_drawer.dart';
import 'package:percent_indicator/percent_indicator.dart';
import 'package:tourism_app/screens/profile/progress_card.dart';

class Profile extends StatelessWidget {
  static const String id = 'profile';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.blue),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      drawer: MainDrawer(),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: CircleAvatar(
                backgroundColor: Colors.white,
                radius: 100,
                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Container(
                    padding: EdgeInsets.all(4.0),
                    decoration: new BoxDecoration(
                      borderRadius:
                          new BorderRadius.all(new Radius.circular(80.0)),
                      border: new Border.all(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    child: CircleAvatar(
                      radius: 80.0,
                      backgroundImage: AssetImage('assets/images/profile.png'),
                      backgroundColor: Colors.transparent,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              'Fernando Pessoa',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
              decoration: new BoxDecoration(
                borderRadius: new BorderRadius.all(new Radius.circular(10.0)),
                color: Colors.purple,
              ),
              child: Text(
                'NEWBIE',
                style: TextStyle(
                    fontSize: 12.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
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
                      'Visited',
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
                        Icons.rate_review,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.blue,
                    ),
                    Text(
                      'Reviews',
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
                        Icons.delete_outline,
                        color: Colors.white,
                      ),
                      backgroundColor: Colors.red,
                    ),
                    Text(
                      'Delete',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.0,
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'My Traveler progress',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Colors.blue),
                ),
              ),
            ),
            Column(
              children: [
                ProgressCard('Aveiro', 0.04, Colors.orange),
                ProgressCard('Beja', 0.10, Colors.green),
                ProgressCard('Branja', 0.25, Colors.blue),
              ],
            )
          ],
        ),
      ),
    );
  }
}
