import 'dart:math';

import 'package:flutter/material.dart';

import 'pages/NewFlutterProject.dart';
import 'pages/about_me.dart';
import 'pages/architecture.dart';
import 'pages/cover.dart';
import 'pages/dart_language.dart';
import 'pages/dart_syntax.dart';
import 'pages/first_glance.dart';
import 'pages/flutter_and_cerence.dart';
import 'pages/flutter_package_types.dart';
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
  PageController _pageController = PageController();
  GlobalKey<_PageNumberState> _key = GlobalKey();
  int _page = 1;

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      var currentPage = _pageController.page.toInt() + 1;
      _page = currentPage;
      _key.currentState.setPage(_page);
    });
  }

  void nextPage() {
    if (!_pageController.hasClients) return;
    var page = (_pageController.page + 1).toInt();
    _pageController.animateToPage(page,
        duration: Duration(milliseconds: 250), curve: Curves.easeInCubic);
  }

  void previousPage() {
    if (!_pageController.hasClients) return;
    var page = max(0, (_pageController.page - 1).toInt());
    _pageController.animateToPage(page,
        duration: Duration(milliseconds: 250), curve: Curves.easeInCubic);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: nextPage,
        child: Stack(
          children: <Widget>[
            PageView(
              controller: _pageController,
              children: <Widget>[
                Cover(),
                AboutMePage(),
                WhyIAmHere(),
                TreePage(),
                FirstGlance(),
                WhoUsesFlutter(),
                FlutterAndCerence(),
                Architecture(),
                DartLanguage(),
                DartSyntax(),
                WidgetTree(),
                WidgetTreeImage(),
                WidgetDebugImage(),
                StateManagement(),
                ProviderTree(),
                FlutterPatterns(),
                GettingStartedPlatforms(),
                GettingStartedEditor(),
                NewProject(),
                FlutterPackageTypes(),
              ],
            ),
            SafeArea(
              child: Center(
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                            icon: Icon(Icons.arrow_left, color: Colors.grey),
                            onPressed: previousPage),
                        PageNumber(key: _key, page: _page),
                        IconButton(
                            icon: Icon(Icons.arrow_right, color: Colors.grey),
                            onPressed: nextPage),
                      ],
                    )),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class PageNumber extends StatefulWidget {
  const PageNumber({
    Key key,
    @required int page,
  })  : initialPage = page,
        super(key: key);

  final int initialPage;

  @override
  _PageNumberState createState() => _PageNumberState();
}

class _PageNumberState extends State<PageNumber> {
  int _page;

  @override
  void initState() {
    super.initState();
    _page = widget.initialPage;
  }

  void setPage(int pageIndex) {
    setState(() => _page = pageIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        child: Center(
            child: Text(
          'Page: $_page',
          style: TextStyle(color: Colors.grey),
        )));
  }
}
