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
//      playlist: ['DVGIBU109nI', 'jtYk3gWRSw0'], // Defining custom playlist
      playlist: ['jtYk3gWRSw0'], // Defining custom playlist
      startAt: Duration(seconds: 30),
      showControls: true,
      showFullscreenButton: true,
    ),
  );

  @override
  void dispose() {
    _controller.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('Who Uses Flutter?'),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Column(
                  children: <Widget>[
                    Bullet('Flutter showcase',
                        link: 'https://flutter.dev/showcase'),
                    Bullet('It\'s All Widgets',
                        link: 'https://itsallwidgets.com'),
                    Bullet('Google: Google Assisant, Stadia'),
                    Bullet('Levono Smart Clock'),
                    Bullet('Tencent: 英语君、Now 直播、翻译君、企鹅辅导'),
                    Bullet('Alibaba: 闲鱼'),
                    Bullet('KKBOX (my previous job)'),
                  ],
                ),
              ),
              SizedBox(width: 30),
              Expanded(
                child: YoutubePlayerIFrame(
                  controller: _controller,
                  aspectRatio: 16 / 9,
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
