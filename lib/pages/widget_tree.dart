import 'package:cerence_slide/pages/page.dart';
import 'package:flutter/material.dart';

import '../styles.dart';

class WidgetTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        children: <Widget>[
          H2('Everything is Widget in A Tree'),
          Bullet('UI = f(State)'),
          Bullet('State and UI elements compose a tree'),
          Bullet('States are at higher level in the tree, '
              'and UI elements are beneath it'),
          Bullet('When states change, the states rebuild UI elements'),
          Bullet('State/UI inconsistent bug could be prevented'),
          Bullet(
              'Flutter uses an algorithm to prevent performance issue on rebuilding the tree'),
        ],
      ),
    );
  }
}
