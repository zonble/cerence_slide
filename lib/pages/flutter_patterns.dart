import 'package:flutter/material.dart';

import '../styles.dart';
import 'page.dart';

class FlutterPatterns extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
          child: Column(children: <Widget>[
        H2('Design Patterns in Flutter'),
        Bullet('Singleton - Place widget in top of the widget tree instead'),
        Bullet('Observers'),
        Bullet('Lower widgets are all effected by higher widgets', level: 1),
        Bullet('You can listern to Streams as well', level: 1),
        Bullet('Dependency Injection - USe widget look-up instead')
      ]));
}
