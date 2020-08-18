import 'package:cerence_slide/pages/page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class Architecture extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('Architecture'),
          Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: buildColumn(context)),
              SizedBox(width: 20),
              Expanded(child: Image.asset('images/arch.png')),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildColumn(context) {
    return Container(
      height: MediaQuery.of(context).size.height - 250,
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Bullet('It\'s like a simplified web browser'),
            Bullet('Renderer: Skia, as Chrome', level: 1),
            Bullet('Replace JavaScript with Dart', level: 1),
            Bullet('Replace DOM with Widgets', level: 1),
            Bullet('As a platform developer'),
            Bullet('Flutter runs in an activity on Android', level: 1),
            Bullet('Flutter runs in a view controller on iOS', level: 1),
            Bullet('Flutter rendered in canvas on web', level: 1),
          ],
        ),
      ),
    );
  }
}
