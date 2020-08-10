import 'package:cerence_slide/pages/page.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class WhoUsesFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('Who Uses Flutter?'),
          Divider(),
          Bullet('Flutter showcase'),
          Bullet('Google'),
          Bullet('Tencent'),
          Bullet('Alibaba'),
          Bullet('KKBOX (my previous job)'),
        ],
      ),
    );
  }
}
