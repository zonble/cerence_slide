import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class H2 extends StatelessWidget {
  final String text;

  H2(this.text, {Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      header: true,
      child: Container(
          width: double.infinity,
          padding: EdgeInsets.only(top: 30, bottom: 10),
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

  Bullet(this.text, {this.level = 0, Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Semantics(
      header: true,
      child: Container(
          padding: EdgeInsets.only(bottom: 16),
          width: double.infinity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(left: 12.0 + level * 30, right: 12.0),
                child: Text('-', style: TextStyle(fontSize: 34)),
              ),
              Flexible(
                  child: Text(this.text,
                      style: TextStyle(
                        fontSize: 34,
                        fontFamily: 'Helvetica Neue',
                        fontWeight: FontWeight.w300,
                      ))),
            ],
          )),
    );
  }
}
