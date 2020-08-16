import 'package:flutter/material.dart';

import 'page.dart';

class WidgetTreeImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
          child: Center(
              child: Expanded(
                  child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/widgets.png'),
          SizedBox(height: 50),
          Text('Image from flutter.dev.', style: TextStyle(fontSize: 24)),
        ],
      ))));
}
