import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_tts/flutter_tts.dart';
import 'package:meta/meta.dart';

part 'tts_event.dart';
part 'tts_script.dart';
part 'tts_state.dart';

class TtsBloc extends Bloc<TtsEvent, TtsBlocState> {
  TtsScriptRunner _runner;

  TtsBloc(TtsBlocState initialState) : super(initialState);

  @override
  Stream<TtsBlocState> mapEventToState(TtsEvent event) async* {
    if (event is TtsInitEvent) {
      if (state is! TtsInitialState) return;
      _runner = TtsScriptRunner(
        onEnd: () => add(_TtsStopEvent()),
        onReset: () => add(_TtsStopEvent()),
        onUpdate: (script, index, playing) =>
            add(_TtsUpdateEvent(script, index, playing)),
      );
      yield TtsStoppedState();
    }
    if (_runner == null) return;

    if (event is _TtsStopEvent) {
      yield TtsStoppedState();
      return;
    }

    if (event is _TtsUpdateEvent) {
      yield event.playing
          ? TtsPlayingState(event.script, event.index)
          : TtsPausedState(event.script, event.index);
      return;
    }

    if (event is TtsStopEvent) {
      _runner.reset();
      return;
    }

    if (event is TtsResumeEvent) {
      _runner.resume();
      return;
    }

    if (event is TtsPauseEvent) {
      _runner.pause();
      return;
    }

    if (event is TtsStartEvent) {
      _runner.run(event.script);
      return;
    }
  }
}
