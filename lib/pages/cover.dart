import 'package:flutter/material.dart';

import '../styles.dart';
import 'page.dart';

class Cover extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SimplePage(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          H1('Introduction to Flutter'),
          Text('Weizhong Yang', style: TextStyle(fontSize: 32)),
          Spacer(),
          Image.asset('images/banner.png'),
          Spacer(),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Aug 28, 2020', style: TextStyle(fontSize: 24)),
                  SizedBox(height: 10),
                  Text('2020 © Cerence Inc.'),
                ],
              ),
              Spacer(),
              Image.asset('images/logo.png'),
            ],
          ),
        ],
      ),
    );
  }
}
