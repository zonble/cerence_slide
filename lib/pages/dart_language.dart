import 'package:cerence_slide/pages/page.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class DartLanguage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('Dart Language 🎯 '),
          Divider(),
          Bullet('Common purpose object oriented programming language'),
          Bullet('Was designed to be compiled to JavaScript'),
          Bullet('Has its own VM nowadays'),
          Bullet('Could be used on CLI and backend'),
          Bullet('Much like Java/C#'),
          Bullet('Good stuff:'),
          Bullet('✅ Nullabiity', level: 1),
          Bullet('✅ Swift/Ojective-C like extensions', level: 1),
          Bullet('✅ Mixin', level: 1),
        ],
      ),
    );
  }
}
