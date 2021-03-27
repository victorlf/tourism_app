import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:tourism_app/components/app_bar_title.dart';
import 'package:tourism_app/screens/categorie/args.dart';
import 'package:tourism_app/screens/categorie/historical_itens.dart';
import 'package:tourism_app/screens/categorie/nearby_items.dart';
import 'package:tourism_app/screens/categorie/popular_items.dart';
import 'package:tourism_app/screens/categorie/restaurants_items.dart';
import 'package:tourism_app/screens/drawer/main_drawer.dart';
import 'package:tourism_app/screens/home/historical_row.dart';

class Categorie extends StatefulWidget {
  static const id = 'categorie';

  @override
  _CategorieState createState() => _CategorieState();
}

class _CategorieState extends State<Categorie> {
  @override
  Widget build(BuildContext context) {
    final CategorieArgs args = ModalRoute.of(context).settings.arguments;

    return DefaultTabController(
      length: choicesNames.length,
      initialIndex: args.tabIndex,
      child: Scaffold(
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
          actions: [
            Icon(Icons.search, color: Colors.blue),
            Icon(
              Icons.more_vert,
              color: Color(0xFF757575),
            )
          ],
          bottom: TabBar(
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(fontSize: 10.0, fontWeight: FontWeight.bold),
            tabs: choicesNames.map((Text choice) {
              return Tab(
                text: choice.data,
              );
            }).toList(),
          ),
        ),
        drawer: MainDrawer(
            //currentSelected: 'Início',
            ),
        body: TabBarView(
          children: [
            NearbyItems(),
            PopularItems(),
            RestaurantsItems(),
            HistoricalItens(),
          ],
        ),
      ),
    );
  }
}

List<Text> choicesNames = <Text>[
  const Text('Nearby'),
  const Text('Popular'),
  const Text('Restaurants'),
  const Text('Historical'),
];
