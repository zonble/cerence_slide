import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';
import 'page.dart';

class Architecture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
        child: Column(children: <Widget>[
      H2('Architecture'),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
        Expanded(child: buildColumn()),
        SizedBox(width: 20),
        Expanded(child: Image.asset('images/arch.png')),
      ])
    ]));
  }

  Widget buildColumn() => Column(children: <Widget>[
        Bullet('It\'s like a simplified web browser'),
        Bullet('Renderer: Skia, as Chrome', level: 1),
        Bullet('Replace JavaScript with Dart', level: 1),
        Bullet('Replace DOM with Widgets', level: 1),
        Bullet('From the view of platform developers'),
        Bullet('Runs in an activity on Android', level: 1),
        Bullet('Runs in a view controller on iOS', level: 1),
        Bullet('Rendered in canvas and DOM on web', level: 1),
      ]);
}
