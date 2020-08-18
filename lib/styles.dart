import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class H1 extends StatelessWidget {
  final String text;

  H1(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      header: true,
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Text(this.text,
              style: TextStyle(
                fontSize: 80,
                color: Color(0xFF00B4BE),
                fontWeight: FontWeight.w200,
                fontFamily: 'Helvetica Neue',
              ))),
    );
  }
}

class H2 extends StatelessWidget {
  final String text;

  H2(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      header: true,
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Text(this.text,
              style: TextStyle(
                fontSize: 66,
                color: Color(0xFF00B4BE),
                fontWeight: FontWeight.w200,
                fontFamily: 'Helvetica Neue',
              ))),
    );
  }
}

class Bullet extends StatelessWidget {
  final String text;
  final int level;
  final String link;

  Bullet(this.text, {this.level = 0, this.link, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      header: true,
      child: Container(
          padding: EdgeInsets.only(bottom: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 12.0 + level * 30, right: 12.0),
                child: Text('-', style: TextStyle(fontSize: 34)),
              ),
              Flexible(
                child: link != null ? buildLink() : buildText(),
              ),
            ],
          )),
    );
  }

  Widget buildLink() => FlatButton(
        onPressed: () => launch(this.link),
        child: buildText(color: Colors.cyan),
      );

  Widget buildText({Color color}) => Text(this.text,
      style: TextStyle(
          fontSize: 34,
          fontFamily: 'Helvetica Neue',
          fontWeight: FontWeight.w300,
          color: color));
}
