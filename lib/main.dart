import 'package:flutter/material.dart';
import 'package:web_app/views/home_page/home_page_view.dart';
import 'package:web_app/views/layout_template/layout_template.dart';

import 'locator.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home page',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: LayoutTemplate(),
    );
  }
}
