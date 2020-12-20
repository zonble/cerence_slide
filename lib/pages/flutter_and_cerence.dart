import 'package:flutter/material.dart';

import '../styles.dart';
import 'page.dart';

class FlutterAndCerence extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
          child: Column(children: <Widget>[
        H2('Flutter and Cerence'),
        Bullet('Flutter is much about GUI'),
        Bullet('Build Google Home Hub like products?'),
        Bullet('ARK SDK clients may use Flutter to build apps'),
        Bullet('People are making Flutter plugins for voice services'),
        Bullet('百度语音识别 (第三方)',
            level: 1,
            link: 'https://github.com/soragui/flutter_baidu_speech_plugin'),
        Bullet(
          '訊飛語音 TTS (第三方)',
          level: 1,
          link: 'https://github.com/fluttify-project/xftts_fluttify',
        )
      ]));
}
