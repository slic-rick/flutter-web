import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:web_app/routing/route_names.dart';
import 'package:web_app/routing/router.dart';
import 'package:web_app/services/navigation_service.dart';
import 'package:web_app/widgets/centered_widget.dart';
import 'package:web_app/widgets/nav_drawer/navigation_drawer.dart';
import 'package:web_app/widgets/naviagtion_bar/navigation_bar.dart';

import '../../locator.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? NavigationDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              NavigationBar(),
              Expanded(
                  child: Navigator(
                key: locator<NavigationService>().navigatorKey,
                onGenerateRoute: generateRoute,
                initialRoute: HomeRoute,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
