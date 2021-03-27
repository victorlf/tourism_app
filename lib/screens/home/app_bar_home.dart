import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:tourism_app/components/app_bar_title.dart';

class AppBarHome extends StatelessWidget with PreferredSizeWidget {
  @override
  final Size preferredSize;

  AppBarHome({
    Key key,
  })  : preferredSize = Size.fromHeight(160.0),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return PreferredSize(
      preferredSize: preferredSize,
      child: AppBar(
        // leading: Icon(
        //   Icons.short_text_outlined,
        //   color: Colors.blue,
        // ),
        leading: IconButton(
          icon: Icon(
            Icons.short_text_rounded,
            color: Colors.blue,
          ),
          onPressed: () => Scaffold.of(context).openDrawer(),
        ),
        title: AppBarTitle(),
        actions: [
          Icon(
            Icons.translate,
            color: Color(0xFF757575),
          ),
          Icon(
            Icons.more_vert,
            color: Color(0xFF757575),
          )
        ],
        flexibleSpace: Padding(
          padding: const EdgeInsets.only(
              top: 70.0, left: 20.0, right: 20.0, bottom: 10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: Container(
                  height: 3.0,
                  width: 30.0,
                  color: Colors.blue,
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0),
                child: Text(
                  'Explore Portugal',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              TextField(
                //style: TextStyle(height: 0.2),
                decoration: InputDecoration(
                    isDense: true,
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    filled: true,
                    fillColor: Colors.grey[300],
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    hintText: 'Search destination...'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
