import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourism_app/providers/drawer_active_screen.dart';
import 'package:tourism_app/screens/favorites/favorites.dart';
import 'package:tourism_app/screens/help/help.dart';
import 'package:tourism_app/screens/home/home.dart';
import 'package:tourism_app/screens/profile/profile.dart';
import 'package:tourism_app/screens/rate_us/rate_us.dart';
import 'package:tourism_app/screens/settings/settings.dart';

class MainDrawer extends StatefulWidget {
  const MainDrawer({
    Key key,
    this.currentSelected,
//    this.screenId,
  }) : super(key: key);

  final String currentSelected;
  //final BuildContext screenId;

  @override
  _MainDrawerState createState() => _MainDrawerState();
}

class _MainDrawerState extends State<MainDrawer> {
  List<ListItem> _list = [
    ListItem(Icons.home, 'Home', Home.id),
    ListItem(Icons.favorite, 'Favorites', Favorites.id),
    ListItem(Icons.settings, 'Settings', Settings.id),
    ListItem(Icons.help, 'Help', Help.id),
    ListItem(Icons.rate_review, 'Rate Us', RateUs.id),
  ];

  //String _currentSelected = 'Início';

  Widget _getListItemTile(BuildContext context, ListItem item) {
    return Consumer<DrawerActiveScreen>(
        builder: (context, screenActive, child) {
      return Container(
        //margin: EdgeInsets.symmetric(vertical: 4),
        color: item.screen == screenActive.screenName
            ? Colors.blue[100]
            : Colors.white,
        child: ListTile(
          leading: Icon(item.icon),
          title: Text(item.name),
          onTap: () {
            Navigator.pop(context);
            //Navigator.pop(widget.screenId);
            //Navigator.pushNamed(context, item.screen);
            Navigator.pushNamedAndRemoveUntil(
                context, item.screen, (route) => false);
            screenActive.changeScreenName(item.screen);
          },
          //selected: item.screen == screenActive.screenName ? true : false,
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
                // image: DecorationImage(
                //     image: AssetImage('images/logo-nib.jpeg')),
              ),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      padding: EdgeInsets.all(4.0),
                      decoration: new BoxDecoration(
                        borderRadius:
                            new BorderRadius.all(new Radius.circular(50.0)),
                        border: new Border.all(
                          color: Colors.blue,
                          width: 2.0,
                        ),
                      ),
                      child: CircleAvatar(
                        radius: 30.0,
                        backgroundImage:
                            AssetImage('assets/images/profile.png'),
                        backgroundColor: Colors.transparent,
                      ),
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.pushNamed(context, Profile.id);
                },
              ),
              //accountName: Text('Doguinho'),
            ),
            for (var item in _list) _getListItemTile(context, item),
            Expanded(
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 10.0, bottom: 20.0),
                  child: Container(
                    width: 100.0,
                    child: Text(
                      'Powered by Oli Enterprise',
                      style: TextStyle(
                          color: Colors.grey, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListItem {
  bool isSelected = false; //Selection property to highlight or not

  ListItem(this.icon, this.name, this.screen);

  IconData icon;
  String name;
  String screen;
}
