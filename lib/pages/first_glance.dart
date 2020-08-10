import 'package:flutter/material.dart';

import '../styles.dart';
import 'page.dart';

class FirstGlance extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('The First Glance'),
          Divider(),
          Bullet('A cross-platform UI framework'),
          Bullet('📱 iOS/Android 💻 macOS/Windows/Web'),
          Bullet('App framework for a future OS - Fuchsia',
              link: 'https://fuchsia.dev'),
          Bullet('By Google'),
          Bullet('Using Dart programming lanaguge', link: 'https://dart.dev'),
          Bullet('Declarative API design and Web development like paradigms'),
          Bullet(
              'Great IDE support, plugin and package system, documentation, tutorial and communities'),
          Bullet('It grows fast, and it is hot 🔥'),
        ],
      ),
    );
  }
}
