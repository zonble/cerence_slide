import 'package:flutter/material.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';

import '../styles.dart';
import 'page.dart';

class WhoUsesFlutter extends StatefulWidget {
  @override
  _WhoUsesFlutterState createState() => _WhoUsesFlutterState();
}

class _WhoUsesFlutterState extends State<WhoUsesFlutter> {
  YoutubePlayerController _controller = YoutubePlayerController(
    initialVideoId: 'DVGIBU109nI',
    params: YoutubePlayerParams(
      playlist: ['jtYk3gWRSw0'],
      startAt: Duration(seconds: 0),
      showControls: true,
      showFullscreenButton: true,
      autoPlay: false,
    ),
  );

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) => SimplePage(
          child: SingleChildScrollView(
              child: Column(children: <Widget>[
        H2('Who Uses Flutter?'),
        Row(crossAxisAlignment: CrossAxisAlignment.start, children: <Widget>[
          Expanded(
            child: Column(
              children: <Widget>[
                Bullet('Flutter showcase',
                    link: 'https://flutter.dev/showcase'),
                Bullet('It\'s All Widgets', link: 'https://itsallwidgets.com'),
                Bullet('Google: Google Home Hub, Stadia'),
                Bullet('Levono Smart Clock'),
                Bullet('Tencent: 英语君、Now 直播、翻译君、企鹅辅导'),
                Bullet('Alibaba: 闲鱼'),
                Bullet('KKBOX (my previous job)'),
              ],
            ),
          ),
          SizedBox(width: 30),
          Expanded(
              child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Image.asset('images/google_home_hub.png'),
            ),
            SizedBox(height: 20),
            YoutubePlayerIFrame(controller: _controller, aspectRatio: 16 / 9),
            SizedBox(height: 20),
          ]))
        ])
      ])));
}
