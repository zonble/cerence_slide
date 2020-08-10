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
          Bullet('Flutter showcase', link: 'https://flutter.dev/showcase'),
          Bullet('It\'s All Widgets', link: 'https://itsallwidgets.com'),
          Bullet('Google'),
          Bullet('Google Assisant', level: 1),
          Bullet('Tencent'),
          Bullet('英语君、Now 直播、翻译君、企鹅辅导', level: 1),
          Bullet('Alibaba'),
          Bullet('闲鱼', level: 1),
          Bullet('KKBOX (my previous job)'),
        ],
      ),
    );
  }
}
