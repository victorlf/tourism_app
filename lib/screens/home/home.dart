import 'package:flutter/material.dart';
import 'package:tourism_app/screens/categorie/args.dart';
import 'package:tourism_app/screens/categorie/categorie.dart';
import 'package:tourism_app/screens/drawer/main_drawer.dart';
import 'package:tourism_app/screens/home/app_bar_home.dart';
import 'package:tourism_app/screens/home/categories_menu.dart';
import 'package:tourism_app/screens/home/historical_row.dart';
import 'package:tourism_app/screens/home/nearby_row.dart';
import 'package:tourism_app/screens/home/popular_row.dart';

class Home extends StatelessWidget {
  static const String id = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHome(),
      drawer: MainDrawer(),
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20.0,
          top: 10.0,
          bottom: 10.0,
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Categories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              CategoriesMenu(),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Nearby',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Categorie.id,
                            arguments: CategorieArgs(0));
                      },
                      child: Text(
                        'See more...',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              NearbyRow(),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Popular',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Categorie.id,
                            arguments: CategorieArgs(1));
                      },
                      child: Text(
                        'See more...',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              PopularRow(),
              SizedBox(
                height: 20.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Historical',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16.0,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 10.0),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, Categorie.id,
                            arguments: CategorieArgs(3));
                      },
                      child: Text(
                        'See more...',
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 10.0,
              ),
              HistoricalRow(),
            ],
          ),
        ),
      ),
    );
  }
}
