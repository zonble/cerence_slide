import 'package:flutter/material.dart';

import '../styles.dart';
import 'page.dart';

class StateManagement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(children: <Widget>[
        H2('State Management'),
        Divider(),
        Bullet('Patterns and Packages'),
        Bullet('Redux', level: 1),
        Bullet('Provider', level: 1),
        Bullet('BLoC - Busiess Logic Components', level: 1),
        Bullet('MobiX...and so on', level: 1),
        Bullet('Difference with JavaScript Patterns'),
        Bullet('Dart has classes', level: 1),
        Bullet('Sub-widget can look up for super widget in specific class',
            level: 1),
      ]),
    );
  }
}
