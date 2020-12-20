import 'package:flutter/material.dart';

import '../styles.dart';
import 'page.dart';

class GettingStartedPlatforms extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
          child: Column(children: <Widget>[
        H2('Getting Started'),
        Bullet('Android development:'),
        Bullet('Windows, macOS, Linux', level: 1),
        Bullet('Need Android Studio installed', level: 1),
        Bullet('iOS development:'),
        Bullet('macOS', level: 1),
        Bullet('Need Xcode installed', level: 1),
        Bullet('Web development (in Beta channel):'),
        Bullet('Windows, macOS, Linux', level: 1),
        Bullet('macOS development is in alpha channel'),
        Bullet('Windows and Linux development is in a very early stage'),
      ]));
}
