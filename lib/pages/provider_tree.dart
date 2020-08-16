import 'package:flutter/material.dart';

import 'page.dart';

class ProviderTree extends StatelessWidget {
  @override
  Widget build(BuildContext context) => SimplePage(
          child: Center(
              child: Expanded(
                  child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Image.asset('images/provider_tree.png'),
          SizedBox(height: 50),
          Text('Image from raywenderlich.com.', style: TextStyle(fontSize: 24)),
        ],
      ))));
}
