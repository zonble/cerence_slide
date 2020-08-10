part of 'tts_bloc.dart';

@immutable
class Utterance {
  final String string;
  final Duration duration;

  Utterance({this.string, this.duration});

  factory Utterance.tenSeconds(String string) =>
      Utterance(string: string, duration: Duration(seconds: 10));
}

@immutable
class TtsScript {
  final List<Utterance> utterances;
  final int initialIndex;

  TtsScript({this.utterances, this.initialIndex = 0});
}

class TtsScriptRunner {
  var _tts = FlutterTts();
  TtsScript _script;
  Timer _timer;
  int _currentIndex;

  Function(TtsScript, int, bool) onUpdate;
  VoidCallback onEnd;
  VoidCallback onReset;

  TtsScriptRunner({this.onUpdate, this.onEnd, this.onReset});

  void init() async {
    await _tts.setLanguage("en-US");
    await _tts.setSpeechRate(1.0);
    await _tts.setVolume(1.0);
    await _tts.setPitch(1.0);
  }

  void _reset() {
    _timer?.cancel();
    _timer = null;
    _script = null;
    _currentIndex = null;
  }

  void reset() {
    _reset();
    if (onReset != null) onReset();
  }

  Future<void> run(TtsScript script) async {
    _reset();
    _script = script;
    _currentIndex = script.initialIndex;
    await _speak();
  }

  Future<void> resume() async {
    _speak();
  }

  Future<void> pause() async {
    if (_script == null) return;
    _tts.stop();
    _timer.cancel();
    _timer = null;

    if (onUpdate != null) onUpdate(_script, _currentIndex, false);
  }

  Future<void> _speak() async {
    if (_currentIndex < 0 || _currentIndex >= _script.utterances.length) {
      if (onEnd != null) onEnd();
      return;
    }
    var utterance = _script.utterances[_currentIndex];
    _tts.speak(utterance.string);
    var duration = utterance.duration;
    _timer = Timer(duration, () {
      _currentIndex += 1;
      _speak();
    });

    if (onUpdate != null) onUpdate(_script, _currentIndex, true);
  }
}
