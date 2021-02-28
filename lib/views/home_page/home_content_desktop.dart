import 'package:flutter/material.dart';
import 'package:web_app/widgets/call_to_action/call_to_action.dart';
import 'package:web_app/widgets/course_details/course_details.view.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CourseDetails(),
        Expanded(
          child: Center(
            child: CallToAction('Join Course'),
          ),
        )
      ],
    );
  }
}
