import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';
import 'page.dart';

class AboutMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('Who Am I'),
          Divider(),
          Row(
            children: <Widget>[
              Expanded(child: buildColumn()),
              Expanded(child: Image.asset('images/zonble.png')),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildColumn() {
    return Column(
      children: <Widget>[
        Bullet('Weizhong Yang (weizhong.yang@cernece.com)'),
        Bullet('👨🏻‍💻 iOS Developer at Taipei'),
        Bullet('Working on Project 168'),
        Bullet('iOS dev for 12 years. '
            'MacOS dev for 15 years. '
            'Flutter for 3 years'),
        Bullet('Flutter GDE',
            link:
                'https://developers.google.com/community/experts/directory/profile/profile-weizhong_yang'),
        Bullet('Built app products using Flutter in previous job'),
        Bullet('Less Flutter after joining an ASR company'),
      ],
    );
  }
}
