import 'package:flutter/material.dart';
import 'package:web_app/routing/route_names.dart';

import 'nav_bar_item.dart';
import 'navbar_logo.dart';

class NavigationBarTabletDesktop extends StatelessWidget {
  const NavigationBarTabletDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              NavBarItem(
                navigationPath: EpisodesRoute,
                title: 'Episodes',
              ),
              SizedBox(
                width: 60,
              ),
              NavBarItem(
                title: 'About',
                navigationPath: AboutRoute,
              ),
            ],
          )
        ],
      ),
    );
  }
}
