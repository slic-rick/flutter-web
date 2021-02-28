import 'package:flutter/material.dart';
import 'package:web_app/routing/route_names.dart';
import 'package:web_app/widgets/naviagtion_bar/nav_bar_item.dart';

class DrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navigationPath;
  const DrawerItem(this.title, this.icon, this.navigationPath);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          SizedBox(width: 30),
          NavBarItem(
            title: title,
            navigationPath: navigationPath,
          ),
        ],
      ),
    );
  }
}
