import 'package:cerence_slide/tester_app/app.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../styles.dart';
import 'page.dart';

class WhyIAmHere extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('Why I Am Here?'),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(child: buildColumn()),
              SizedBox(width: 30),
              Expanded(
                child: Container(
                    decoration:
                        BoxDecoration(border: Border.all(color: Colors.black)),
                    width: 320,
                    height: MediaQuery.of(context).size.height - 300,
                    child: ClipRect(child: MyTesterApp())),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildColumn() {
    return Column(
      children: <Widget>[
        Bullet('I wrote a cross-platform app...'),
        Bullet('To test 168 cradle for a few minutes', level: 1),
        Bullet('Because I am lazy', level: 1),
        Bullet('It leverage platform’s TTS to perform automatic tests',
            level: 1),
        Bullet('It\'s in Flutter', level: 1),
        Bullet('Allen Lin says I should share it with you'),
      ],
    );
  }
}
