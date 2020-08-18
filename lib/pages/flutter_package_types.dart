import 'package:flutter/material.dart';

import '../styles.dart';
import 'page.dart';

class FlutterPackageTypes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('Flutter Package Types'),
          Bullet('Application'),
          Bullet('The final product runs on Android, iOS, and so on...',
              level: 1),
          Bullet('Plugin'),
          Bullet('A library briges native code in Java/Kotlin/ObjC/Swift...',
              level: 1),
          Bullet('Includes a Dart interface', level: 1),
          Bullet('Method Chanels, Event Channels, Platform View', level: 1),
          Bullet('Package'),
          Bullet('Pure Dart code', level: 1),
          Bullet('Flutter Module'),
          Bullet('Add Flutter support to existing Android/iOS project',
              level: 1),
        ],
      ),
    );
  }
}
