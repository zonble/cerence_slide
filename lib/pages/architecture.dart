import 'package:cerence_slide/pages/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class Architecture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('Architecture'),
          Divider(),
          Bullet('Like Flash for 21st Century'),
          Bullet('Flutter was born from Web technologies'),
          Bullet('It\'s like a simplified web browser'),
          Bullet('Renderer: Skia, as Chrome', level: 1),
          Bullet('Replace JavaScript with Dart', level: 1),
          Bullet('Replace DOM with Widgets', level: 1),
          Bullet('From the view of platform developers'),
          Bullet('Flutter runs in an activity on Android', level: 1),
          Bullet('Flutter runs in a view controller on iOS', level: 1),
          Bullet('Flutter rendered in canvas on web', level: 1),
        ],
      ),
    );
  }
}
