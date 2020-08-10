part of 'tts_bloc.dart';

@immutable
abstract class TtsEvent {}

@immutable
class TtsInitEvent extends TtsEvent {}

@immutable
class TtsStopEvent extends TtsEvent {}

@immutable
class _TtsStopEvent extends TtsEvent {}

@immutable
class TtsPauseEvent extends TtsEvent {}

@immutable
class TtsResumeEvent extends TtsEvent {}

@immutable
class TtsStartEvent extends TtsEvent {
  final TtsScript script;

  TtsStartEvent(this.script);
}

@immutable
class _TtsUpdateEvent extends TtsEvent {
  final TtsScript script;
  final int index;
  final bool playing;

  _TtsUpdateEvent(this.script, this.index, this.playing);
}
