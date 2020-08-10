import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'tts/tts_bloc.dart';

class ManualTestPage extends StatefulWidget {
  ManualTestPage({Key key}) : super(key: key);

  @override
  _ManualTestPageState createState() => _ManualTestPageState();
}

class _ManualTestPageState extends State<ManualTestPage> {
  void speak(String text) {
    // ignore: close_sinks
    var bloc = BlocProvider.of<TtsBloc>(context);
    bloc.add(TtsStartEvent(TtsScript(initialIndex: 0, utterances: [
      Utterance(string: text, duration: Duration(seconds: 10)),
    ])));
  }

  Widget _tile(String text) {
    return ListTile(
      title: Text(text),
      leading: Icon(Icons.play_arrow),
      onTap: () async => speak(text),
    );
  }

  Widget _title(String text) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
      child: Text(text, style: TextStyle(fontWeight: FontWeight.bold)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            FloatingActionButton(
              onPressed: () => speak('The first one'),
              child: Text('1'),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () => speak('The second one'),
              child: Text('2'),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () => speak('Yes'),
              child: Text('Yes'),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () => speak('No'),
              child: Text('No'),
            ),
            SizedBox(height: 10),
            FloatingActionButton(
              onPressed: () => speak('Hey Cerence'),
              child: Text('WuW'),
            ),
          ],
        ),
        body: Scrollbar(
          child: ListView(
            children: <Widget>[
              _title('WuW'),
              _tile('Hey Cerence'),
              _tile('Hey Seren'),
              _tile('Hey Siri'),
              Divider(),
              _title('Music'),
              _tile('Play Jazz Music'),
              _tile('Play Poker Face'),
              _tile('Play Norah Jones'),
              _tile('Play Ice Ice baby'),
              _tile('Play Coldplay'),
              _tile('Stop Playing'),
              _tile('Play Next Song'),
              _tile('Louder'),
              _tile('Softer'),
              _tile('Show me the music'),
              Divider(),
              _title('Navigation'),
              _tile('Navigate to Taipei zoo'),
              _tile('Navigate to Taipei University'),
              _tile('Navigate to Taiwan University'),
              _tile('Take me to a movie theater nearby'),
              _tile('Take me to a gas station nearby'),
              _tile('Zoom in'),
              _tile('Zoom out'),
              _tile('Show me the map'),
              Divider(),
              _title('Weather'),
              _tile('How is the weather today'),
              _tile('How about tomorrow'),
              _tile('How about today'),
              _tile('How about New York'),
              Divider(),
              _title('Phone'),
              _tile('Make a phone call'),
              _tile('Call Bruce Liao'),
              _tile('Home'),
              _tile('Office'),
              Divider(),
              _title('Dashcam'),
              _tile('Open dash cam'),
              _tile('Show my dash cam'),
              _tile('Start recording'),
              _tile('Stop recording'),
              _tile('Take a picture'),
              _tile('Show my pictures'),
            ],
          ),
        ));
  }
}
