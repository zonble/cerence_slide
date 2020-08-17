import 'package:flutter/material.dart';

import 'page.dart';

class NewProject extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Flexible(child: Image.asset('images/new_project.png')),
          Text('Starting a new project', style: TextStyle(fontSize: 24)),
        ],
      )));
}
