import 'package:cerence_slide/pages/page.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class FlutterAndCerence extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('Flutter and Cerence'),
          Divider(),
          Bullet('Flutter is much about GUI'),
          Bullet('It does not help our T-BOX products'),
          Bullet('ARK SDK cliets may use Flutter to build apps'),
          Bullet('Competetors are supporting Flutter'),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Bullet('百度語音'),
          ),
        ],
      ),
    );
  }
}
