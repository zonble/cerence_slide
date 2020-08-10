import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'tts/tts_bloc.dart';

class AutoTextPage extends StatefulWidget {
  @override
  _AutoTextPageState createState() => _AutoTextPageState();
}

class _AutoTextPageState extends State<AutoTextPage> {
  @override
  Widget build(BuildContext context) {
    List<Utterance> utterances = [
      Utterance(string: 'Hey Cerence', duration: Duration(seconds: 3)),
      Utterance(string: 'Play Jazz Music', duration: Duration(seconds: 5)),
      Utterance(string: 'Play Rock Music', duration: Duration(seconds: 5)),
      Utterance(string: 'Play Poker Face', duration: Duration(seconds: 5)),
      Utterance(string: 'Play Norah Jones', duration: Duration(seconds: 5)),
      Utterance(string: 'Play Michael Jackson', duration: Duration(seconds: 5)),
      Utterance(string: 'Lauder', duration: Duration(seconds: 5)),
      Utterance(string: 'Hey Cerence', duration: Duration(seconds: 3)),
      Utterance(string: 'Softer', duration: Duration(seconds: 5)),
      Utterance(string: 'Hey Cerence', duration: Duration(seconds: 3)),
      Utterance(
          string: 'Navigate to Taipei Zoo', duration: Duration(seconds: 5)),
      Utterance(string: 'Yes', duration: Duration(seconds: 3)),
      Utterance(string: 'Zoom In', duration: Duration(seconds: 3)),
      Utterance(string: 'Zoom In', duration: Duration(seconds: 3)),
      Utterance(string: 'Zoom Out', duration: Duration(seconds: 3)),
      Utterance(string: 'Zoom Out', duration: Duration(seconds: 3)),
      Utterance(string: 'Hey Cerence', duration: Duration(seconds: 3)),
      Utterance(
          string: 'How is the weather today', duration: Duration(seconds: 10)),
      Utterance(string: 'How about tomorrow', duration: Duration(seconds: 12)),
      Utterance(string: 'How about New York', duration: Duration(seconds: 12)),
      Utterance(string: 'Hey Cerence', duration: Duration(seconds: 3)),
      Utterance(string: 'Call Bruce Liao', duration: Duration(seconds: 3)),
      Utterance(string: 'Office', duration: Duration(seconds: 3)),
      Utterance(string: 'Hang up', duration: Duration(seconds: 5)),
      Utterance(string: 'Hey Cerence', duration: Duration(seconds: 3)),
      Utterance(string: 'Show me the map', duration: Duration(seconds: 3)),
      Utterance(string: 'Close the map', duration: Duration(seconds: 3)),
      Utterance(string: 'Hey Cerence', duration: Duration(seconds: 3)),
      Utterance(
          string: 'Start emergency recording', duration: Duration(seconds: 3)),
      Utterance(
          string: 'Stop emergency recording', duration: Duration(seconds: 3)),
      Utterance(string: 'Take a picture', duration: Duration(seconds: 3)),
    ];

    // ignore: close_sinks
    var bloc = BlocProvider.of<TtsBloc>(context);

    return Scaffold(
      floatingActionButton: BlocBuilder<TtsBloc, TtsBlocState>(
        builder: (context, state) {
          if (state is TtsPlayingState) {
            return FloatingActionButton(
              onPressed: () => bloc.add(TtsPauseEvent()),
              child: Icon(Icons.pause),
            );
          }
          if (state is TtsPausedState) {
            return FloatingActionButton(
              onPressed: () => bloc.add(TtsResumeEvent()),
              child: Icon(Icons.play_arrow),
            );
          }
          return FloatingActionButton(
            onPressed: () => bloc.add(TtsStartEvent(
                TtsScript(utterances: utterances, initialIndex: 0))),
            child: Icon(Icons.play_arrow),
          );
        },
      ),
      body: ListView.builder(
          itemBuilder: (_, index) {
            var line = utterances[index].string;
            return BlocBuilder<TtsBloc, TtsBlocState>(
                builder: (context, state) {
              var isSelected = () {
                if (state is TtsPlayingState) return state.index == index;
                if (state is TtsPausedState) return state.index == index;
                return false;
              }();

              return Container(
                color: isSelected ? Colors.yellow : null,
                child: ListTile(
                  onTap: () => bloc.add(TtsStartEvent(
                      TtsScript(utterances: utterances, initialIndex: index))),
                  title: Text(line),
                  leading: isSelected
                      ? Icon(Icons.play_arrow)
                      : Container(width: 30),
                ),
              );
            });
          },
          itemCount: utterances.length),
    );
  }
}
