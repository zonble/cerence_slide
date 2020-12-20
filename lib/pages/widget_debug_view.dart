import 'package:flutter/material.dart';

import 'page.dart';

class WidgetDebugImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
          child: Center(
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
            Flexible(child: Image.asset('images/widget_debug.png')),
            SizedBox(height: 50),
            Text('The Widget tree in IntelliJ IDE',
                style: TextStyle(fontSize: 24)),
          ])));
}
