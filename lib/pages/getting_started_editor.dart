import 'package:flutter/material.dart';

import '../styles.dart';
import 'page.dart';

class GettingStartedEditor extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
        child: Column(children: <Widget>[
      H2('Getting Started'),
      Bullet('Download IDE: Android Studio, IntelliJ, or VScode'),
      Bullet(
          'If you don\'t know what to choose, use Android Studio, ' +
              'since you have to install it for Android development.',
          level: 1),
      Bullet('Download Flutter SDK from flutter.dev'),
      Bullet('Install Flutter plug-ins in your IDE'),
      Bullet('Start your first Flutter project'),
    ]));
}
