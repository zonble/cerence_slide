import 'package:flutter/material.dart';

import 'pages/about_me.dart';
import 'pages/architecture.dart';
import 'pages/dart_language.dart';
import 'pages/first_glance.dart';
import 'pages/flutter_and_cerence.dart';
import 'pages/flutter_patterns.dart';
import 'pages/getting_started.dart';
import 'pages/getting_started_editor.dart';
import 'pages/provider_tree.dart';
import 'pages/state_management.dart';
import 'pages/tree.dart';
import 'pages/who_uses_flutter.dart';
import 'pages/why_i_am_here.dart';
import 'pages/widget_debug_view.dart';
import 'pages/widget_tree.dart';
import 'pages/widget_tree_image.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Introduction to Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Introduction to Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: <Widget>[
          AboutMePage(),
          WhyIAmHere(),
          TreePage(),
          FirstGlance(),
          WhoUsesFlutter(),
          FlutterAndCerence(),
          Architecture(),
          DartLanguage(),
          WidgetTree(),
          WidgetTreeImage(),
          WidgetDebugImage(),
          StateManagement(),
          ProviderTree(),
          FlutterPatterns(),
          GettingStartedPlatforms(),
          GettingStartedEditor(),
        ],
      ),
    );
  }
}
