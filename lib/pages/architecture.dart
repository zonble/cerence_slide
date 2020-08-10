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
          H2('Architecture- Flash for 21 Century'),
          Divider(),
          Bullet('Flutter was born from Web technologies'),
          Bullet('It\'s like a simplified web browser'),
          Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Bullet('Renderer: Skia, as Chrome')),
          Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Bullet('Replace JavaScript with Dart')),
          Padding(
              padding: const EdgeInsets.only(left: 30.0),
              child: Bullet('Replace DOM with Widgets')),
        ],
      ),
    );
  }
}
