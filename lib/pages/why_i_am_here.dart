import 'package:cerence_slide/pages/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class WhyIAmHere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('Why I Am Here?'),
          Divider(),
          Bullet('I wrote a cross-platform app...'),
          Bullet('To test 168 cradle for a few minutes', level: 1),
          Bullet('Because I am lazy', level: 1),
          Bullet('It leverage platform’s TTS to perform automatic tests',
              level: 1),
          Bullet('It\'s in Flutter', level: 1),
          Bullet('Allen Lin says I should share it with you'),
        ],
      ),
    );
  }
}
