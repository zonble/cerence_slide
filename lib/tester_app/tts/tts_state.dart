part of 'tts_bloc.dart';

@immutable
abstract class TtsBlocState {}

@immutable
class TtsInitialState extends TtsBlocState {}

@immutable
class TtsStoppedState extends TtsBlocState {}

@immutable
class TtsPlayingState extends TtsBlocState {
  final TtsScript script;
  final int index;

  TtsPlayingState(this.script, this.index);
}

@immutable
class TtsPausedState extends TtsBlocState {
  final TtsScript script;
  final int index;

  TtsPausedState(this.script, this.index);
}
