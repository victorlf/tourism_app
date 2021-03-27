import 'package:flutter/material.dart';
import 'package:tourism_app/components/constants.dart';
import 'package:tourism_app/providers/drawer_active_screen.dart';
import 'package:tourism_app/screens/article/article.dart';
import 'package:tourism_app/screens/article_restaurant/article_restaurant.dart';
import 'package:tourism_app/screens/categorie/categorie.dart';
import 'package:tourism_app/screens/favorites/favorites.dart';
import 'package:tourism_app/screens/help/help.dart';
import 'package:tourism_app/screens/home/home.dart';
import 'package:provider/provider.dart';
import 'package:tourism_app/screens/profile/profile.dart';
import 'package:tourism_app/screens/rate_us/rate_us.dart';
import 'package:tourism_app/screens/settings/settings.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialization;
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (context) => DrawerActiveScreen(Home.id),
    ),
  ], child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            primaryColor: Colors.white,
            textTheme:
                Theme.of(context).textTheme.apply(fontFamily: 'Quicksand')),
        initialRoute: Home.id,
        routes: {
          Home.id: (context) => Home(),
          Categorie.id: (context) => Categorie(),
          Article.id: (context) => Article(),
          ArticleRestaurant.id: (context) => ArticleRestaurant(),
          Favorites.id: (context) => Favorites(),
          Settings.id: (context) => Settings(),
          Help.id: (context) => Help(),
          RateUs.id: (context) => RateUs(),
          Profile.id: (context) => Profile(),
        });
  }
}
