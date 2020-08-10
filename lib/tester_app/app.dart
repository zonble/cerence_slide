import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'auto_text_page.dart';
import 'manual_test_page.dart';
import 'tts/tts_bloc.dart';

class MyTesterApp extends StatefulWidget {
  @override
  _MyTesterAppState createState() => _MyTesterAppState();
}

class _MyTesterAppState extends State<MyTesterApp> {
  TtsBloc bloc = TtsBloc(TtsInitialState());

  @override
  void dispose() {
    bloc.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    bloc.add(TtsInitEvent());
    return BlocProvider(
      create: (_) => bloc,
      child: MaterialApp(
        title: '168 Tester',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _index = 0;
  var _pages = [
    ['Auto', AutoTextPage()],
    ['Manual', ManualTestPage()],
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(_pages[_index][0])),
      body: Stack(
          children: List.generate(
              _pages.length,
              (index) => Offstage(
                    offstage: index != _index,
                    child: _pages[index][1],
                  ))),
      drawer: Drawer(
        child: ListView.builder(
          itemBuilder: (_, index) => ListTile(
              onTap: () {
                setState(() => _index = index);
                Navigator.of(context).pop();
              },
              leading: Container(
                  width: 30,
                  height: 30,
                  child: (index == _index) ? Icon(Icons.check) : Container()),
              title: Text(_pages[index][0])),
          itemCount: _pages.length,
        ),
      ),
    );
  }
}
